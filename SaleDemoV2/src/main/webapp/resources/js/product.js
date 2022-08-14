/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function deleteProduct(endpoint, id, btn) {
    let load = document.getElementById(`load${id}`)
    load.style.display = "block";
    btn.style.display = "none";
    fetch(endpoint, {
        method: "delete"
    }).then(function(res) {
        if (res.status === 204) {
            let r = document.getElementById(`row{id}`);
            r.style.display = "none";
        } else {
            load.style.display = "none";
            btn.style.display = "block";
        }
            
            location.reload();
    }).catch(function(err) {
        console.error(err);
        
        load.style.display = "none";
            btn.style.display = "block";
    });
}

function loadProducts(endpoint) {
    fetch(endpoint).then(function(res) {
        return res.json();
    }).then(function(data) {
        console.info(data);
        let d = document.getElementById("myProd");
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `<tr id="row${data[i].id}">
                    <td><img src="${data[i].image}" width="120" /></td>
                    <td>${data[i].name}</td>
                    <td>${data[i].price} VND</td>
                    <td>
                        <div class="spinner-border text-info" style="display:none;" id="load${data[i].id}"></div>
                        <button class="btn btn-danger" onclick="deleteProduct('${endpoint+"/"+data[i].id}', ${data[i].id}, this)">Xoa</button>
                    </td>
                </tr>`;
        
        d.innerHTML = msg;
    });
}

function loadComment(endpoint, productId) {
    fetch(endpoint).then(function(res) {
        return res.json();
    }).then(function(data) {
        console.info(data)
        let h = '';
        for (let c of data)
            h += `
                <a href="#" class="list-group-item list-group-item-action">${c.content} - binh luan boi ${c.user.username} - ${moment(c.createdDate).locale("vi").fromNow()}</a>
            `
        
        let d = document.getElementById("comments");
        d.innerHTML = h;
    });
}

function addComment(endpoint, proId) {
    fetch(endpoint, {
        method: "post",
        body: JSON.stringify({
            "content": document.getElementById("content").value,
            "productId": proId
        }),
        headers: {
            'Content-Type': "application/json"
        }
    }).then(function(res) {
        return res.json();
    }).then(function(data) {
        let d = document.querySelector("#comments a:first-child");
        let h = `
                <a href="#" class="list-group-item list-group-item-action">${data.content} - binh luan boi ${data.user.username} - ${moment(data.createdDate).locale("vi").fromNow()}</a>
            `;
        d.insertAdjacentHTML("beforebegin", h);
    })
}

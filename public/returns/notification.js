var fetchNotifications = function () {
    return fetch(`https://7ed4-202-166-171-14.ngrok.io/get_notification?shop_domain=${Shopify.shop}`)
        .then(response => response.json())
        .then(data => {
            var notification = data.notification;
            var body = document.getElementsByTagName('body')[0]
            let div = document.createElement("div")
            div.style = `color: ${notification.color}; background-color: ${notification.background_color}`
            div.append(notification.title)
            body.prepend(div)
        });
}();

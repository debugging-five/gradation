    function openPopup() {
        document.getElementById('wrapper').style.display = 'block';
        document.getElementById('overlay').style.display = 'block';
    }

    function closePopup() {
        document.getElementById('wrapper').style.display = 'none';
        document.getElementById('overlay').style.display = 'none';
    }

    document.getElementById('open-popup-btn').addEventListener('click', openPopup);

    document.getElementById('overlay').addEventListener('click', closePopup);
    


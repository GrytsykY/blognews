<div class="container">
    <div class="text-center">
        <h2>ДОБАВЛЕНИЕ НОВОСТЕЙ</h2>
    </div>
    <form action="<?= BLOG ?>/add/add" method="post">
        <div class="form-group">
            <label for="formInput">Заголовок</label>
            <input type="text" name="title" value="<?php echo ($_SESSION['title']); unset($_SESSION['title'])?>"
                   class="form-control" placeholder="Введите заголовок"/>
        </div>
        <div class="form-group">
            <label for="formInput2">Текст</label>
            <textarea class="form-control" name="text" placeholder="Введите текст"></textarea>
            <input type="hidden" name="created_at" value="<?php echo date('Y-m-d H:i:s');?>">
            <input type="hidden" name="updated_at" value="<?php echo date('Y-m-d H:i:s');?>">
        </div>
        <button type="submit" class="btn btn-info">Отправить</button>
    </form>

</div>

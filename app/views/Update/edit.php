<div class="container">
    <div class="text-center">
        <h2>РЕДАКТИРОВАНИЕ НОВОСТИ</h2>
    </div>
    <form action="<?= BLOG ?>/update/update?update=<?=$edits->id?>" method="post">
        <div class="form-group">
            <label for="formInput">Заголовок</label>
            <input type="text" value="<?=$edits['title']?>" name="title" class="form-control" placeholder="Введите заголовок">
        </div>
        <div class="form-group">
            <label for="formInput2">Текст</label>
            <textarea class="form-control"  name="text" placeholder="Введите текст"><?=$edits['text']?></textarea>
            <input type="hidden" name="created_at" value="<?php echo $edits->created_at;?>">
            <input type="hidden" name="updated_at" value="<?php echo date('Y-m-d H:i:s');?>">
        </div>
        <button type="submit" class="btn btn-info">Отправить</button>
    </form>
</div>

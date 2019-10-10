<div class="container">
    <div class="text-center">
        <h2>БЛОГ НОВОСТЕЙ</h2>
    </div>
    <p><a class="btn btn-success" href="<?= BLOG ?>add/add">Добавить новость</a></p>
    <?php foreach ($posts as $post): ?>
        <div class="panel panel-default">

            <div class="panel-heading"><h3><?= $post['title']?></h3></div>
            <div class="panel-body">
                <?= $post['text']?>
            </div>
            <div>
                <p style="margin-left: 15px;"><b>Дата публикации: </b><?= $post['created_at']?></p>
                <p style="margin-left: 15px;"><b>Дата обновления: </b><?= $post['updated_at']?></p>
            </div>
            <div style="margin: 0 0 5px 5px">
                <a href="<?= BLOG ?>update/edit?edit='<?php echo $post['id']?>'"  class="btn btn-info">Редактировать</a>
                <a href="<?= BLOG ?>update/delete?del='<?php echo $post['id']?>'" class="btn btn-danger">Удалить</a>
            </div>
        </div>
    <?php endforeach; ?>

    <div class="text-center">
        <p>Статей: <?=count($posts);?> из <?=$total; ?></p>
        <?=$pagination ?>
    </div>
</div>

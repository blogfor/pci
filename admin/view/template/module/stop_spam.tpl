<?php echo $header; ?>
<div id="content">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
            <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a href="<?php echo $cancel; ?>" class="button"><span><?php echo $button_cancel; ?></span></a></div>
        </div>
        <div class="content">
            <div id="tabs" class="htabs"><a href="#tab-settings"><?php echo $tab_settings; ?></a><a href="#tab-sfs"><?php echo $tab_sfs; ?></a><a href="#tab-akismet"><?php echo $tab_akismet; ?></a></div>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
                <div id="tab-settings">
                    <h2><?php echo $title_settings; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $text_enable; ?></td>
                            <td><?php if ($config_stop_spam_enable) { ?>
                                <input type="radio" name="config_stop_spam_enable" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_stop_spam_enable" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_stop_spam_enable" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_stop_spam_enable" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                    </table>
                    <h2><?php echo $title_use_on; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $text_use_account_register; ?></td>
                            <td><?php if ($config_use_account_register) { ?>
                                <input type="radio" name="config_use_account_register" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_account_register" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_use_account_register" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_account_register" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_use_checkout_register; ?></td>
                            <td><?php if ($config_use_checkout_register) { ?>
                                <input type="radio" name="config_use_checkout_register" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_checkout_register" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_use_checkout_register" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_checkout_register" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_use_checkout_guest; ?></td>
                            <td><?php if ($config_use_checkout_guest) { ?>
                                <input type="radio" name="config_use_checkout_guest" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_checkout_guest" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_use_checkout_guest" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_checkout_guest" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_use_contact; ?></td>
                            <td><?php if ($config_use_contact) { ?>
                                <input type="radio" name="config_use_contact" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_contact" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_use_contact" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_contact" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_use_reviews; ?></td>
                            <td><?php if ($config_use_reviews) { ?>
                                <input type="radio" name="config_use_reviews" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_reviews" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_use_reviews" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_use_reviews" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                    </table>
                    <table class="form">
                    <h2><?php echo $title_whitelistblacklist; ?></h2>
                        <tr>
                            <td><?php echo $text_whitelist; ?><br><span class="help"><?php echo $text_whitelist_help; ?></span></td>
                            <td><textarea name="config_stop_spam_whitelist" cols="40" rows="5"><?php echo $config_stop_spam_whitelist; ?></textarea></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_blacklist; ?><br><span class="help"><?php echo $text_blacklist_help; ?></span></td>
                            <td><textarea name="config_stop_spam_blacklist" cols="40" rows="5"><?php echo $config_stop_spam_blacklist; ?></textarea></td>
                        </tr>
                    </table>
                </div>
                <div id="tab-sfs">
                    <h2><?php echo $title_sfs_enable; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $text_sfs_enable; ?></td>
                            <td><?php if ($config_sfs_enable) { ?>
                                <input type="radio" name="config_sfs_enable" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_sfs_enable" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_sfs_enable" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_sfs_enable" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                    </table>
                    <h2><?php echo $title_sfs; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $text_sfs_email; ?></td>
                            <td><?php if ($config_sfs_email) { ?>
                                <input type="radio" name="config_sfs_email" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_sfs_email" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_sfs_email" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_sfs_email" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_sfs_ip; ?></td>
                            <td><?php if ($config_sfs_ip) { ?>
                                <input type="radio" name="config_sfs_ip" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_sfs_ip" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_sfs_ip" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_sfs_ip" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $text_sfs_confidence; ?><br><span class="help"><?php echo $text_sfs_confidence_help; ?></span></td>
                            <td><input type="text" name="config_sfs_confidence" value="<?php echo $config_sfs_confidence; ?>" size="10" />
                                <?php if ($error_sfs_confidence) { ?>
                                <span class="error"><?php echo $error_sfs_confidence; ?></span>
                                <?php } ?></td>
                        </tr>
                    </table>
                </div>
                <div id="tab-akismet">
                    <h2><?php echo $title_akismet_enable; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $text_akismet_enable; ?></td>
                            <td><?php if ($config_akismet_enable) { ?>
                                <input type="radio" name="config_akismet_enable" value="1" checked="checked" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_akismet_enable" value="0" />
                                <?php echo $text_no; ?>
                                <?php } else { ?>
                                <input type="radio" name="config_akismet_enable" value="1" />
                                <?php echo $text_yes; ?>
                                <input type="radio" name="config_akismet_enable" value="0" checked="checked" />
                                <?php echo $text_no; ?>
                                <?php } ?></td>
                        </tr>
                    </table>
                    <h2><?php echo $title_akismet; ?></h2>
                    <table class="form">
                        <tr>
                            <td><?php echo $text_akismet_key; ?><br><span class="help"><a target="_blank" href="https://akismet.com/signup/"><?php echo $text_akismet_key_help; ?></a></span></td>
                            <td><input type="text" name="config_akismet_key" value="<?php echo $config_akismet_key; ?>" size="20" />
                                <?php if ($error_akismet_key) { ?>
                                <span class="error"><?php echo $error_akismet_key; ?></span>
                                <?php } ?></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    $('#tabs a').tabs();
    //--></script> 
<?php echo $footer; ?>
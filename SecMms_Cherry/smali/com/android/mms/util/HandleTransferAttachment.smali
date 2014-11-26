.class public Lcom/android/mms/util/HandleTransferAttachment;
.super Ljava/lang/Object;
.source "HandleTransferAttachment.java"


# static fields
.field public static final REQUEST_CODE_PICK_DRAWINGPAD:I = 0x15

.field public static final REQUEST_CODE_PICK_LOCATION:I = 0x14

.field public static final REQUEST_CODE_PICK_MYFILES:I = 0x16

.field public static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field public static final REQUEST_CODE_PICK_SOUND:I = 0xe

.field public static final REQUEST_CODE_PICK_VCAL:I = 0x11

.field public static final REQUEST_CODE_PICK_VCARD:I = 0x10

.field public static final REQUEST_CODE_PICK_VIDEO:I = 0xc

.field public static final REQUEST_CODE_PICK_VNOTE:I = 0x12

.field public static final REQUEST_CODE_PICK_VTODO:I = 0x13

.field public static final REQUEST_CODE_RECORD_SOUND:I = 0xf

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public startActivityForAttachMedia(IZ)V
    .locals 15
    .param p1    # I
    .param p2    # Z

    const-string v0, "audio/*"

    const-string v1, "image/*"

    const-string v5, "video/*"

    const-string v2, "com.sec.android.app.myfiles.PICK_DATA"

    const-string v4, "Rcs_Camera_Request"

    const-string v3, "Rcs_Camera_Key"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v7, "image/*"

    const/16 v10, 0xa

    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.GET_CONTENT"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v9, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    const/16 v10, 0xb

    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.sec.android.app.camera"

    const-string v12, "com.sec.android.app.camera.Camera"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "Rcs_Camera_Key"

    const-string v12, "Rcs_Camera_Request"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v11, "return-uri"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v9, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    const-string v7, "video/*"

    const/16 v10, 0xc

    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.GET_CONTENT"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v9, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    const/16 v10, 0xd

    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "rcs_ft"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileSizeLimit()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    const-string v11, "android.intent.extra.sizeLimit"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileSizeLimit()J

    move-result-wide v12

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_4

    const-string v11, "android.intent.extra.sizeLimit"

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v12

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_4
    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v9, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const-string v12, "com.sec.android.app.myfiles"

    invoke-static {v11, v12}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xe

    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "FOLDERPATH"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Sounds"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "CONTENT_TYPE"

    const-string v12, "audio/*"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v9, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_6
    const/16 v10, 0xf

    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileSizeLimit()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_5

    const-string v11, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageFileSizeLimit()J

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_6

    const-string v11, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Ft;->getFileSizeLimit()J

    move-result-wide v12

    invoke-virtual {v6, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_6
    const-string v11, "mime_type"

    const-string v12, "audio/amr"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v6, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "text/x-vcard"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x10

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    sget-object v12, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "vnd.android.cursor.dir/vnd.samsung.calendar.*"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x11

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "text/x-vnote"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x12

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "text/x-vtodo"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x13

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PICK"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "image_location"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x14

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "app_name"

    const-string v12, "com.samsung.rcs"

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x15

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.EDIT"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "application/vnd.penmemo.drawingpad"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x15

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/util/HandleTransferAttachment;->mActivity:Landroid/app/Activity;

    const/16 v12, 0x16

    invoke-virtual {v11, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

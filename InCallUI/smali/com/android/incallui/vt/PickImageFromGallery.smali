.class public Lcom/android/incallui/vt/PickImageFromGallery;
.super Landroid/app/Activity;
.source "PickImageFromGallery.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static mFilePath:Ljava/lang/String;

.field private static myHandler:Landroid/os/Handler;


# instance fields
.field private final MAX_OUTPUT_X:I

.field private final MAX_OUTPUT_Y:I

.field private final REQUEST_PICK_IMAGE_BITMAP_FROM_GALLERY:I

.field private final REQUEST_PICK_IMAGE_FILE_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/incallui/vt/PickImageFromGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/vt/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x16e

    iput v0, p0, Lcom/android/incallui/vt/PickImageFromGallery;->MAX_OUTPUT_X:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/vt/PickImageFromGallery;->MAX_OUTPUT_Y:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/vt/PickImageFromGallery;->REQUEST_PICK_IMAGE_BITMAP_FROM_GALLERY:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/vt/PickImageFromGallery;->REQUEST_PICK_IMAGE_FILE_FROM_GALLERY:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/incallui/vt/PickImageFromGallery;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    return-void
.end method

.method protected static registerForImageGalleryResponse(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method protected static unregisterForImageGalleryResponse()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public displayToast(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/PickImageFromGallery;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :pswitch_0
    if-ne p2, v5, :cond_0

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Return value from GALLERY (extras) is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    if-ne p2, v5, :cond_0

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    if-nez p3, :cond_2

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Return data from GALLERY is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0x65

    iput v3, v1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    if-ne p2, v5, :cond_0

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0xc8

    iput v3, v1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/incallui/vt/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "Ignore onConfigurationChanged for PickImageFromGallery"

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PickImageFromGallery;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v10, 0x0

    sput-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "imageSelected"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v4, 0x64

    if-eqz v2, :cond_9

    sget-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v11, "select Image from the gallery "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v11, "PickImageFromFallery : OnCreate()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "com.sec.android.gallery3d"

    const-string v11, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x8000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "image/*"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "crop"

    const-string v11, "true"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.LOCAL_ONLY"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "senderIsVideoCall"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "return_file"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v6, 0xb0

    const/16 v5, 0x90

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "resolution"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "resolution"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "VGA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v1, :cond_1

    const/16 v6, 0x1e0

    const/16 v5, 0x280

    :cond_0
    :goto_0
    if-eqz v1, :cond_7

    const/16 v4, 0x65

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "file_path"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    sget-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    if-nez v10, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_1
    const/16 v6, 0xf0

    const/16 v5, 0x140

    goto :goto_0

    :cond_2
    const-string v10, "VGALAND"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v1, :cond_3

    const/16 v6, 0x280

    const/16 v5, 0x1e0

    goto :goto_0

    :cond_3
    const/16 v6, 0x140

    const/16 v5, 0xf0

    goto :goto_0

    :cond_4
    const-string v10, "QVGA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v6, 0xf0

    const/16 v5, 0x140

    goto :goto_0

    :cond_5
    const-string v10, "QVGALAND"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v6, 0x140

    const/16 v5, 0xf0

    goto :goto_0

    :cond_6
    const-string v10, "resizeW"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "resizeH"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "output"

    sget-object v11, Lcom/android/incallui/vt/PickImageFromGallery;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/incallui/vt/PickImageFromGallery;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "outputFormat"

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    :try_start_0
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const v10, 0x7f0902f4

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/incallui/vt/PickImageFromGallery;->displayToast(Ljava/lang/String;)V

    sget-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No activity found for intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v10, "ims_video_outgoing_image_picture"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "resizeW"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "resizeH"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    const-string v10, "return-data"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "surfaceWidth"

    const/16 v12, 0x16e

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "surfaceHeight"

    const/16 v12, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "aspectX"

    const/16 v11, 0x16e

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "aspectY"

    const/16 v11, 0x12c

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "outputX"

    const/16 v11, 0x16e

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "outputY"

    const/16 v11, 0x12c

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_9
    sget-object v10, Lcom/android/incallui/vt/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v11, "select Video from the gallery "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x66

    const-string v10, "com.sec.android.gallery3d"

    const-string v11, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x8000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "video/*"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "only3gp"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "senderIsVideoCall"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "android.intent.extra.LOCAL_ONLY"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2
.end method

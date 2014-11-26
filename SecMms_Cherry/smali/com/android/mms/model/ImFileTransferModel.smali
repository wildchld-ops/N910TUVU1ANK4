.class public Lcom/android/mms/model/ImFileTransferModel;
.super Lcom/android/mms/model/Model;
.source "ImFileTransferModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Lorg/w3c/dom/events/EventListener;


# static fields
.field public static final APPLICATION:Ljava/lang/String; = "application"

.field public static final AUDIO:Ljava/lang/String; = "audio"

.field private static final DEBUG:Z = false

.field private static final DESCRIPTION_UNSUPPORTED_OPERATION:Ljava/lang/String; = "Operation not supported."

.field public static final EVENT:Ljava/lang/String; = "text/x-vcalendar"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field private static final LOCAL_LOGV:Z = false

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NONE:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "Mms/ImFileTransferModel"

.field public static final TASK:Ljava/lang/String; = "text/x-vtodo"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final VCARD:Ljava/lang/String; = "text/x-vcard"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field private static mFileTransferType:I


# instance fields
.field private mApplication:Lcom/android/mms/model/MediaModel;

.field private mAttachmentModel:Lcom/android/mms/model/AttachmentModel;

.field private mAudio:Lcom/android/mms/model/MediaModel;

.field private mAudioUri:Landroid/net/Uri;

.field private mCanAddVideo:Z

.field private mContext:Landroid/content/Context;

.field private mImage:Lcom/android/mms/model/MediaModel;

.field private mImageUri:Landroid/net/Uri;

.field private mLocation:Lcom/android/mms/model/MediaModel;

.field private mLocationUri:Landroid/net/Uri;

.field private mMediaModel:Lcom/android/mms/model/MediaModel;

.field public mParent:Lcom/android/mms/model/SlideshowModel;

.field private mText:Lcom/android/mms/model/MediaModel;

.field private mVideo:Lcom/android/mms/model/MediaModel;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mCanAddVideo:Z

    iput-object p1, p0, Lcom/android/mms/model/ImFileTransferModel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/AttachmentModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/model/MediaModel;
    .param p3    # Lcom/android/mms/model/AttachmentModel;

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mCanAddVideo:Z

    iput-object p1, p0, Lcom/android/mms/model/ImFileTransferModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/model/ImFileTransferModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    iput-object p3, p0, Lcom/android/mms/model/ImFileTransferModel;->mAttachmentModel:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method

.method private static checkFileTransferType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sput v1, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    const-string v1, "image"

    goto :goto_0

    :cond_1
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    sput v1, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    const-string v1, "video"

    goto :goto_0

    :cond_2
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    sput v1, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    const-string v1, "audio"

    goto :goto_0

    :cond_4
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    sput v1, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    const-string v1, "text/x-vcalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "text/x-vcalendar"

    goto :goto_0

    :cond_5
    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "text/x-vtodo"

    goto :goto_0

    :cond_6
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "text/x-vcard"

    goto :goto_0

    :cond_7
    const-string v1, "text"

    goto :goto_0

    :cond_8
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    sput v1, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    const-string v1, "location"

    goto :goto_0

    :cond_9
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    sput v1, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    const-string v1, "application"

    goto/16 :goto_0

    :cond_a
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public static createFileTransferFromURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/mms/model/ImFileTransferModel;
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/net/Uri;
    .param p4    # Z

    new-instance v1, Lcom/android/mms/model/ImFileTransferModel;

    invoke-direct {v1, p0}, Lcom/android/mms/model/ImFileTransferModel;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/mms/model/ImFileTransferModel;->checkFileTransferType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget v3, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    if-eqz p4, :cond_0

    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getRcsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mImage:Lcom/android/mms/model/MediaModel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Mms/ImFileTransferModel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getFreeMessageMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mImage:Lcom/android/mms/model/MediaModel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "Mms/ImFileTransferModel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    if-eqz p4, :cond_1

    :try_start_2
    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getRcsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mVideo:Lcom/android/mms/model/MediaModel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "Mms/ImFileTransferModel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getFreeMessageMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mVideo:Lcom/android/mms/model/MediaModel;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v3, "Mms/ImFileTransferModel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_3
    if-eqz p4, :cond_2

    :try_start_4
    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getRcsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mAudio:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getFreeMessageMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mAudio:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    :pswitch_4
    if-eqz p4, :cond_3

    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getRcsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mText:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getFreeMessageMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mText:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    :pswitch_5
    if-eqz p4, :cond_4

    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getRcsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mLocation:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getFreeMessageMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mLocation:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    :pswitch_6
    if-eqz p4, :cond_5

    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getRcsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mApplication:Lcom/android/mms/model/MediaModel;

    goto/16 :goto_0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/model/MediaModelFactory;->getFreeMessageMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mms/model/ImFileTransferModel;->mApplication:Lcom/android/mms/model/MediaModel;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static isMediaType(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getApplication()Lcom/android/mms/model/ImTextModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mApplication:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImTextModel;

    return-object v0
.end method

.method public getAttachmentModel()Lcom/android/mms/model/AttachmentModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mAttachmentModel:Lcom/android/mms/model/AttachmentModel;

    return-object v0
.end method

.method public getAudio()Lcom/android/mms/model/AudioModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mAudio:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/AudioModel;

    return-object v0
.end method

.method public getAudioUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileTransferType()I
    .locals 1

    sget v0, Lcom/android/mms/model/ImFileTransferModel;->mFileTransferType:I

    return v0
.end method

.method public getImage()Lcom/android/mms/model/ImageModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mImage:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImageModel;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaModel()Lcom/android/mms/model/MediaModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mMediaModel:Lcom/android/mms/model/MediaModel;

    return-object v0
.end method

.method public getText()Lcom/android/mms/model/ImTextModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mText:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/ImTextModel;

    return-object v0
.end method

.method public getVideo()Lcom/android/mms/model/VideoModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mVideo:Lcom/android/mms/model/MediaModel;

    check-cast v0, Lcom/android/mms/model/VideoModel;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 0
    .param p1    # Lorg/w3c/dom/events/Event;

    return-void
.end method

.method public hasApplication()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mApplication:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mAudio:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mLocation:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mText:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mVideo:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanAddVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/model/ImFileTransferModel;->mCanAddVideo:Z

    return v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .param p1    # Lcom/android/mms/model/Model;
    .param p2    # Z

    return-void
.end method

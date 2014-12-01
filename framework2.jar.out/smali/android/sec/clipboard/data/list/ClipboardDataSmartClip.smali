.class public Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataSmartClip.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBmpImgPath:Ljava/lang/String;

.field private mImgPath:Ljava/lang/String;

.field private mPlainString:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mPlainString:Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetSmartClip()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_7
    move-object v2, p2

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->setBmpImagePath(Ljava/lang/String;)V

    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->SetSmartClip(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    move-result v0

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public SetSmartClip(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->encodeRepositoryToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mPlainString:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    return-void
.end method

.method public getBmpImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return-void
.end method

.method public setBmpImagePath(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SmartClip write to parcel"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text/uri-list"

    aput-object v3, v1, v2

    new-instance v0, Landroid/content/ClipData$Item;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    new-instance v2, Landroid/content/ClipData;

    const-string v3, "clipboarddragNdrop"

    invoke-direct {v2, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->mBmpImgPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

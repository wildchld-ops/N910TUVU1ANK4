.class public Lcom/android/phone/IMSConferenceCallMgr;
.super Ljava/lang/Object;
.source "IMSConferenceCallMgr.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallMgr$Participant;,
        Lcom/android/phone/IMSConferenceCallMgr$Status;,
        Lcom/android/phone/IMSConferenceCallMgr$State;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mDirectConfCall:Z

.field private static mStateChanged:Z

.field private static mToastObj:Landroid/widget/Toast;

.field private static mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

.field private static sInstance:Lcom/android/phone/IMSConferenceCallMgr;


# instance fields
.field public lastLogCount:I

.field public lastLogNumber:Ljava/lang/String;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private final mContext:Landroid/content/Context;

.field public mIsActiveGroupCall:Z

.field private mParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/IMSConferenceCallMgr$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->DBG:Z

    sput-object v3, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    sput-boolean v2, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    sput-boolean v2, Lcom/android/phone/IMSConferenceCallMgr;->mStateChanged:Z

    sput-object v3, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Lcom/android/phone/IMSConferenceCallMgr;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallMgr;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/IMSConferenceCallMgr;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Ljava/lang/String;

    const v6, 0x7f0200de

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContactImage] enter photoUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContactImage] bitmap size : width["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] height["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Admin wallpaper EX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/IMSConferenceCallMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->init()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/phone/IMSConferenceCallMgr;
    .locals 4

    const-class v1, Lcom/android/phone/IMSConferenceCallMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMgr;-><init>()V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDirectConfCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    return v0
.end method

.method private loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42380000

    mul-float/2addr v1, v2

    float-to-int v2, v1

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load photo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadPhoto] width["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] height["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->reSizeBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v1, v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load photo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "[IMSConferenceCallMgr]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private modifiedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "*23#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*23#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "+82"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+82"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reSizeBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    const/high16 v4, 0x42c80000

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float v2, v0, v4

    int-to-float v3, p2

    div-float v2, v3, v2

    div-float v3, v2, v4

    mul-float/2addr v1, v3

    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    :cond_0
    float-to-int v1, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setDirectConfCall(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    goto :goto_0
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/phone/IMSConferenceCallMgr$State;
    .param p3    # Lcom/android/internal/telephony/Connection;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "[addParticipant] fail  here!"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addParticipant] already added number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    :goto_1
    const-string v2, "addParticipant"

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;-><init>(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 6
    .param p1    # Ljava/lang/String;

    const-string v4, "alreadyAddedUser enter"

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->modifiedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alreadyAddedUser ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_2
    const/4 v2, 0x0

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->modifiedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alreadyAddedUser - Same participant - number from list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number from stack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cleanParticipantsList()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public disconnectParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .param p2    # Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->saveParticipantLog(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    const-string v1, "disconnectParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectedAllParticipants(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disconnectedAllParticipants] before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr$State;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->initParticipantsList()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disconnectedAllParticipants] after  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return v0
.end method

.method public getAliveParticipantNumberList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAliveStateCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAliveStateCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return v0
.end method

.method public getDeletableCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDELETABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDeletableCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return v0
.end method

.method public getDeletableParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    :cond_0
    const-string v2, "[getDeletableParticipant] idx is not valid"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDELETABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, p1, :cond_2

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_0
.end method

.method public getDialedParticipantNumberList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDIALABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 2
    .param p1    # I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "[getParticipant] idx is not valid"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getParticipant] number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    goto :goto_0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "[getParticipant] number == null"

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getParticipant] number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getParticipantsCount()I
    .locals 3

    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getParticipantsCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStateChanged()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->mStateChanged:Z

    return v0
.end method

.method public initParticipantsList()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParticipantsList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isVideoCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public mapConfState(I)Lcom/android/phone/IMSConferenceCallMgr$State;
    .locals 3
    .param p1    # I

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->INVALID:Lcom/android/phone/IMSConferenceCallMgr$State;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mapConfState] ignored notiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ACTIVE:Lcom/android/phone/IMSConferenceCallMgr$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ALERTING:Lcom/android/phone/IMSConferenceCallMgr$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ONHOLD:Lcom/android/phone/IMSConferenceCallMgr$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 2
    .param p1    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] onTickForCallTimeElapsed timeElapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->updateElapsedTime(J)V

    return-void
.end method

.method public prepareDial(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection;

    const-string v2, "[prepareDial] ender"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDIALABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$State;->DIALING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    const-string v2, "prepareDial"

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareDialNumber(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/internal/telephony/Connection;

    const-string v2, "[prepareDialNumber] ender"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$State;->DIALING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, p2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    const-string v2, "prepareDial"

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 2
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "removeParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetLastLog()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    return-void
.end method

.method public saveParticipantLog(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .param p2    # Lcom/android/internal/telephony/Connection;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[saveParticipantLog] Number["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] CreateTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Duration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v2, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    iget-wide v5, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/CallNotifier;->saveParticipantLog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0
    .param p1    # Lcom/android/phone/IMSConferenceCallActivity;

    sput-object p1, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    return-void
.end method

.method public setLastLog()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    :cond_0
    return-void
.end method

.method public setStateChanged(Z)V
    .locals 0
    .param p1    # Z

    sput-boolean p1, Lcom/android/phone/IMSConferenceCallMgr;->mStateChanged:Z

    return-void
.end method

.method public showConnectedToast(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090976

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showLongToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v1, 0x7f090830

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->showLongToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDisconnectedToast(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f09082b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showUserMessage(ILjava/lang/String;)V
    .locals 16
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v13, -0x1

    const-string v11, ""

    const-string v12, ""

    const/16 v3, 0x193

    const/16 v5, 0x194

    const/16 v7, 0x198

    const/16 v10, 0x1e0

    const/16 v1, 0x1e6

    const/16 v6, 0x1f3

    const/16 v8, 0x1f4

    const/16 v9, 0x1f7

    const/16 v2, 0x25b

    const/16 v4, 0x25e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[showUserMessage] number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  msgType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    :goto_1
    return-void

    :sswitch_0
    const-string v11, "(403)"

    const v13, 0x7f09093d

    goto :goto_0

    :sswitch_1
    const-string v11, "(404)"

    const v13, 0x7f09094e

    goto :goto_0

    :sswitch_2
    const-string v11, "(408)"

    const v13, 0x7f090964

    goto :goto_0

    :sswitch_3
    const-string v11, "(480)"

    const v13, 0x7f090942

    goto :goto_0

    :sswitch_4
    const-string v11, "(486)"

    const v13, 0x7f090966

    goto :goto_0

    :sswitch_5
    const-string v11, "(499)"

    const v13, 0x7f090967

    goto :goto_0

    :sswitch_6
    const-string v11, "(500)"

    const v13, 0x7f090964

    goto :goto_0

    :sswitch_7
    const-string v11, "(503)"

    const v13, 0x7f090965

    goto :goto_0

    :sswitch_8
    const-string v11, "(603)"

    const v13, 0x7f09094b

    goto :goto_0

    :sswitch_9
    const-string v11, "(606)"

    const v13, 0x7f090955

    goto :goto_0

    :cond_0
    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/IMSConferenceCallMgr;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x1e6 -> :sswitch_4
        0x1f3 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f7 -> :sswitch_7
        0x25b -> :sswitch_8
        0x25e -> :sswitch_9
    .end sparse-switch
.end method

.method startTimer(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Call;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] startTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] stopTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    :cond_0
    return-void
.end method

.method public update(Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .param p1    # Lcom/android/internal/telephony/Connection;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    const-string v9, "participantlist"

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v11, ""

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] participantlist "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    if-eqz v13, :cond_b

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    const-string v19, "\\,"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v12, ""

    array-length v10, v4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v10, v0, :cond_0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v18, 0x0

    const-string v16, ""

    const-string v14, ""

    sget-object v19, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    if-eqz v19, :cond_2

    sget-object v19, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/IMSConferenceCallActivity;->storeCheckedItem()V

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_a

    aget-object v19, v4, v7

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    aget-object v19, v4, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v19, v4, v7

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aget-object v19, v4, v7

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] dialStrings[ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->mapConfState(I)Lcom/android/phone/IMSConferenceCallMgr$State;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isINVALID()Z

    move-result v19

    if-eqz v19, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] ignored INVALID  orginal status is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v6, -0x1

    const-string v16, ""

    const-string v14, ""

    const/16 v19, 0x2f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_9

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    if-nez v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v19

    if-eqz v19, :cond_6

    iget-object v0, v8, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/IMSConferenceCallMgr$State;->isOutgoing()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/IMSConferenceCallMgr;->showUserMessage(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    :cond_9
    move-object v14, v12

    goto :goto_3

    :cond_a
    invoke-virtual {v3, v9, v11}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    if-eqz v19, :cond_b

    sget-object v19, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/IMSConferenceCallActivity;->updateDeletableParticipant()V

    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] Participant count is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateElapsedTime(J)V
    .locals 6
    .param p1    # J

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->stopTimer()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    iget-wide v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallActivity;->updateScreen()V

    goto :goto_0
.end method

.method public updateParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .param p2    # Lcom/android/phone/IMSConferenceCallMgr$State;
    .param p3    # Lcom/android/internal/telephony/Connection;

    if-nez p1, :cond_0

    const-string v0, "[updateParticipant] fail  info is not valid "

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/phone/IMSConferenceCallMgr$State;
    .param p3    # Lcom/android/internal/telephony/Connection;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    :cond_0
    const-string v4, "[updateParticipant] fail  number is not valid "

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "ims_uwa"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/android/phone/LGTUwaCallServiceMgr;->getInstance()Lcom/android/phone/LGTUwaCallServiceMgr;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/phone/LGTUwaCallServiceMgr;->broadcastUwaGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateParticipant] number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateParticipant] already removed number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v4}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->showDisconnectedToast(Ljava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    :goto_1
    const-string v4, "updateParticipant"

    invoke-virtual {v1, v4}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_9

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v4}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    iget-wide v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    invoke-virtual {p0, v1, p3}, Lcom/android/phone/IMSConferenceCallMgr;->disconnectParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1
.end method

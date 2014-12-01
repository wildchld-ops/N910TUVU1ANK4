.class public Lcom/sec/android/app/camera/ExternalFilterLoader;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final DELETED:Ljava/lang/String; = "deleted"

.field private static final EFFECT_NAME:Ljava/lang/String; = "name"

.field private static final EXT_RES_PATH:Ljava/lang/String; = "/data/DownFilters/Res/"

.field private static final FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters/include_deleted"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field private static final FILTER_URI:Landroid/net/Uri;

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final INDEX_DELETED:I = 0xd

.field private static final INDEX_EFFECT_NAME:I = 0x1

.field private static final INDEX_FILE_NAME:I = 0x2

.field private static final INDEX_FILTER_TYPE:I = 0x5

.field private static final INDEX_HANDLER:I = 0xb

.field private static final INDEX_HEIGHT:I = 0xa

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MVENDOR:I = 0x4

.field private static final INDEX_PACKAGE_NAME:I = 0xc

.field private static final INDEX_POSX:I = 0x7

.field private static final INDEX_POSY:I = 0x8

.field private static final INDEX_TITLE:I = 0x6

.field private static final INDEX_VERSION:I = 0x3

.field private static final INDEX_WIDTH:I = 0x9

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final POSX:Ljava/lang/String; = "posx"

.field private static final POSY:Ljava/lang/String; = "posy"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VENDOR:Ljava/lang/String; = "vendor"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final _ID:Ljava/lang/String; = "_ID"

.field private static mDualExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mExternalEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFilterDBObserver:Landroid/database/ContentObserver;

.field private mFilterExist:Z

.field private mIsDBChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters/include_deleted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vendor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "filter_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "posx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "posy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "handler"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    new-instance v0, Lcom/sec/android/app/camera/ExternalFilterLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$1;-><init>(Lcom/sec/android/app/camera/ExternalFilterLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v1, "create ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/ExternalFilterLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/ExternalFilterLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    return p1
.end method


# virtual methods
.method public clear(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v1, "clear ExternalFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return-void
.end method

.method public getExternalEffectCount()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalEffectResourcePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/DownFilters/Res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalEffectsId(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getExternalEffectsName(I)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    add-int/lit16 v1, p1, -0x1f40

    if-ltz v1, :cond_1

    add-int/lit16 v1, p1, -0x1f40

    sget-object v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterForSet(I)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExternalFilterFullName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterHandler(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getHandler()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public getExternalFilterHeight(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalFilterName(I)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    add-int/lit16 v1, p1, -0x1f40

    if-ltz v1, :cond_0

    add-int/lit16 v1, p1, -0x1f40

    sget-object v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v2, p1, -0x1f40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFiterName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExternalFilterPackageName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalFilterPosx(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPosx()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalFilterPosy(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getPosy()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getExternalFilterType(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getFilterType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilterWidth(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;

    add-int/lit16 v1, p1, -0x1f40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExternalEffect(I)Z
    .locals 1

    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2328

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterDBChanged()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFilterDBChanged() returns ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isFilterLoaded()Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFilterLoaded() returns ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    return v0
.end method

.method public isValidExternalId(I)Z
    .locals 2

    add-int/lit16 v0, p1, -0x1f40

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, p1, -0x1f40

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExternalFilters()Z
    .locals 23

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v2, "load ExternalFilterLoader"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/camera/ExternalFilterLoader;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    if-nez v17, :cond_1

    const/4 v1, 0x0

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v1, "Unnamed filter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v1, "Unnamed filter"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v1, "Unknown vendor"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    const-string v1, "Unknown FilterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v1, "Unknown title"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v1, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v1, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v1, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v21, v21, 0x1

    const/16 v1, 0xd

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], effectName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], filterName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], version["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], vendor["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], filter_type["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], title["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], posx["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], posy["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], width["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], height["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], handler["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], packageName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], deleted["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_1

    const-string v1, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v22, Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    move/from16 v0, v20

    add-int/lit16 v4, v0, 0x1f40

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;-><init>(Lcom/sec/android/app/camera/ExternalFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_2
    if-nez v20, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z

    if-nez v21, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->TAG:Ljava/lang/String;

    const-string v2, "Preload filters has not been initialized properly... reset!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.filterinstaller.RESET_DB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v19

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public registerObserver(Lcom/sec/android/app/camera/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/ExternalFilterLoader;->BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegisterObserver(Lcom/sec/android/app/camera/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

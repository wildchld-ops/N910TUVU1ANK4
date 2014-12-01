.class public Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.super Ljava/lang/Object;
.source "MenuResourceBundle.java"


# instance fields
.field private resourceIds:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    return-void
.end method


# virtual methods
.method public varargs MenuResourceBundle([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    :cond_0
    return-void
.end method

.method public getAbbTitleId()I
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getBundleSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    array-length v0, v0

    return v0
.end method

.method public getCommandId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getContentDescriptionId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    array-length v0, v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getItem(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTitleId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->resourceIds:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

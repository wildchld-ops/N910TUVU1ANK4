.class public final Lcom/voovio/sweep/TexturePool;
.super Ljava/lang/Object;
.source "TexturePool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static m_aTextureIDs:[I

.field private static m_nPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    sget v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    new-array v0, v2, [I

    sput-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    return-void
.end method

.method public static getTexture()I
    .locals 5

    const/4 v4, -0x1

    sget v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget-object v2, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    sput-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    const/4 v1, 0x1

    sget-object v2, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    :cond_0
    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget v2, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    aget v0, v1, v2

    sget-object v1, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget v2, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v3, v2, -0x1

    sput v3, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    aput v4, v1, v2

    return v0
.end method

.method public static returnTexture(I)V
    .locals 2

    sget-object v0, Lcom/voovio/sweep/TexturePool;->m_aTextureIDs:[I

    sget v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/voovio/sweep/TexturePool;->m_nPointer:I

    aput p0, v0, v1

    return-void
.end method

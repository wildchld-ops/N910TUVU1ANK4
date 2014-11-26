.class public final Lcom/voovio/sweep/Template;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/Template$Position;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/voovio/sweep/Template;",
            ">;"
        }
    .end annotation
.end field

.field static EFFECT_BLEND:I

.field static EFFECT_MOTION_BLUR:I

.field static EFFECT_NONE:I

.field static IMAGE_ASPECT_BOTH:Ljava/lang/String;

.field static IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

.field static IMAGE_ASPECT_VERTICAL:Ljava/lang/String;

.field static PIPE_TYPE_HERMITE:I

.field static PIPE_TYPE_LINEAR:I

.field static TRANSITION_TYPE_PIPE:I


# instance fields
.field m_aPositions:[Lcom/voovio/sweep/Template$Position;

.field m_abVisible:[[Z

.field m_afAlpha:[[F

.field private m_bmdIcon:Landroid/graphics/Bitmap;

.field m_fAltura:[F

.field m_fAnchura:[F

.field m_fAngulo:[F

.field m_fAvance:[F

.field m_fLateral:[F

.field m_nEffect:I

.field m_nFillPseudoSpaces:I

.field m_nFramePeriod:I

.field private m_nGroupId:I

.field private m_nIconId:I

.field private m_nId:I

.field m_nPipeType:I

.field m_nSteps:I

.field m_nTransitionType:I

.field private m_strImageAspect:Ljava/lang/String;

.field m_strName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/voovio/sweep/Template;->TRANSITION_TYPE_PIPE:I

    sput v0, Lcom/voovio/sweep/Template;->PIPE_TYPE_LINEAR:I

    sput v1, Lcom/voovio/sweep/Template;->PIPE_TYPE_HERMITE:I

    sput v0, Lcom/voovio/sweep/Template;->EFFECT_NONE:I

    sput v1, Lcom/voovio/sweep/Template;->EFFECT_MOTION_BLUR:I

    const/4 v0, 0x2

    sput v0, Lcom/voovio/sweep/Template;->EFFECT_BLEND:I

    const-string v0, "both"

    sput-object v0, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_BOTH:Ljava/lang/String;

    const-string v0, "horizontal"

    sput-object v0, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    const-string v0, "vertical"

    sput-object v0, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_VERTICAL:Ljava/lang/String;

    new-instance v0, Lcom/voovio/sweep/Template$1;

    invoke-direct {v0}, Lcom/voovio/sweep/Template$1;-><init>()V

    sput-object v0, Lcom/voovio/sweep/Template;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nId:I

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    iput-object v2, p0, Lcom/voovio/sweep/Template;->m_bmdIcon:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_BOTH:Ljava/lang/String;

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_strImageAspect:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    sget v0, Lcom/voovio/sweep/Template;->TRANSITION_TYPE_PIPE:I

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nTransitionType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nFillPseudoSpaces:I

    sget v0, Lcom/voovio/sweep/Template;->EFFECT_NONE:I

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nEffect:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nFramePeriod:I

    iput-object v2, p0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    iput-object v2, p0, Lcom/voovio/sweep/Template;->m_abVisible:[[Z

    iput-object v2, p0, Lcom/voovio/sweep/Template;->m_afAlpha:[[F

    sget v0, Lcom/voovio/sweep/Template;->PIPE_TYPE_LINEAR:I

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nPipeType:I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Lcom/voovio/sweep/Template;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/voovio/sweep/Template;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voovio/sweep/Template;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method Read(Ljava/nio/ByteBuffer;)I
    .locals 13
    .param p1    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {p1}, Lcom/voovio/io/Input;->ReadString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nTransitionType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nFillPseudoSpaces:I

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    const-string v11, "#["

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    const-string v11, "]#"

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    add-int/lit8 v11, v8, 0x2

    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "H"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_HORIZONTAL:Ljava/lang/String;

    :goto_0
    iput-object v10, p0, Lcom/voovio/sweep/Template;->m_strImageAspect:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    add-int/lit8 v12, v2, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nEffect:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nFramePeriod:I

    iget v10, p0, Lcom/voovio/sweep/Template;->m_nFillPseudoSpaces:I

    add-int/lit8 v6, v10, 0x2

    new-array v10, v6, [Lcom/voovio/sweep/Template$Position;

    iput-object v10, p0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    new-array v10, v6, [[Z

    iput-object v10, p0, Lcom/voovio/sweep/Template;->m_abVisible:[[Z

    new-array v10, v6, [[F

    iput-object v10, p0, Lcom/voovio/sweep/Template;->m_afAlpha:[[F

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nPipeType:I

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/voovio/io/Input;->ReadFloatArray(Ljava/nio/ByteBuffer;[FI)V

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/voovio/io/Input;->ReadFloatArray(Ljava/nio/ByteBuffer;[FI)V

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/voovio/io/Input;->ReadFloatArray(Ljava/nio/ByteBuffer;[FI)V

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/voovio/io/Input;->ReadFloatArray(Ljava/nio/ByteBuffer;[FI)V

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    const/4 v11, 0x2

    invoke-static {p1, v10, v11}, Lcom/voovio/io/Input;->ReadFloatArray(Ljava/nio/ByteBuffer;[FI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    const/4 v10, 0x0

    return v10

    :cond_1
    const-string v10, "V"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_VERTICAL:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    sget-object v10, Lcom/voovio/sweep/Template;->IMAGE_ASPECT_BOTH:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    new-instance v7, Lcom/voovio/sweep/Template$Position;

    invoke-direct {v7, p0}, Lcom/voovio/sweep/Template$Position;-><init>(Lcom/voovio/sweep/Template;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Template$Position;->m_fAvance:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Template$Position;->m_fLateral:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Template$Position;->m_fAltura:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Template$Position;->m_fAngulo:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    iput v10, v7, Lcom/voovio/sweep/Template$Position;->m_fOffset:F

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    aput-object v7, v10, v3

    iget v10, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    new-array v0, v10, [Z

    const/4 v4, 0x0

    :goto_2
    iget v10, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    if-lt v4, v10, :cond_4

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_abVisible:[[Z

    aput-object v0, v10, v3

    iget v10, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    new-array v1, v10, [F

    const/4 v4, 0x0

    :goto_3
    iget v10, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    if-lt v4, v10, :cond_6

    iget-object v10, p0, Lcom/voovio/sweep/Template;->m_afAlpha:[[F

    aput-object v1, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    if-lez v10, :cond_5

    const/4 v10, 0x1

    :goto_4
    aput-boolean v10, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    aput v10, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method clone(F)Lcom/voovio/sweep/Template;
    .locals 12
    .param p1    # F

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v7, Lcom/voovio/sweep/Template;

    invoke-direct {v7}, Lcom/voovio/sweep/Template;-><init>()V

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nId:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nId:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nGroupId:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nIconId:I

    iget-object v8, p0, Lcom/voovio/sweep/Template;->m_bmdIcon:Landroid/graphics/Bitmap;

    iput-object v8, v7, Lcom/voovio/sweep/Template;->m_bmdIcon:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/voovio/sweep/Template;->m_strImageAspect:Ljava/lang/String;

    iput-object v8, v7, Lcom/voovio/sweep/Template;->m_strImageAspect:Ljava/lang/String;

    iget-object v8, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    iput-object v8, v7, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nTransitionType:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nTransitionType:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nFillPseudoSpaces:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nFillPseudoSpaces:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nEffect:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nEffect:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nSteps:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nFramePeriod:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nFramePeriod:I

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nFillPseudoSpaces:I

    add-int/lit8 v4, v8, 0x2

    new-array v8, v4, [Lcom/voovio/sweep/Template$Position;

    iput-object v8, v7, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    new-array v8, v4, [[Z

    iput-object v8, v7, Lcom/voovio/sweep/Template;->m_abVisible:[[Z

    new-array v8, v4, [[F

    iput-object v8, v7, Lcom/voovio/sweep/Template;->m_afAlpha:[[F

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nPipeType:I

    iput v8, v7, Lcom/voovio/sweep/Template;->m_nPipeType:I

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAvance:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    aget v9, v9, v10

    mul-float/2addr v9, p1

    aput v9, v8, v10

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAvance:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    aget v9, v9, v11

    mul-float/2addr v9, p1

    aput v9, v8, v11

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fLateral:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    aget v9, v9, v10

    mul-float/2addr v9, p1

    aput v9, v8, v10

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fLateral:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    aget v9, v9, v11

    mul-float/2addr v9, p1

    aput v9, v8, v11

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAltura:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    aget v9, v9, v10

    aput v9, v8, v10

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAltura:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    aget v9, v9, v11

    mul-float/2addr v9, p1

    aput v9, v8, v11

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    aget v9, v9, v10

    mul-float/2addr v9, p1

    aput v9, v8, v10

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    aget v9, v9, v11

    aput v9, v8, v11

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    aget v9, v9, v10

    aput v9, v8, v10

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    iget-object v9, p0, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    aget v9, v9, v11

    aput v9, v8, v11

    return-object v7

    :cond_0
    iget-object v8, p0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    aget-object v6, v8, v2

    new-instance v5, Lcom/voovio/sweep/Template$Position;

    invoke-direct {v5, p0}, Lcom/voovio/sweep/Template$Position;-><init>(Lcom/voovio/sweep/Template;)V

    iget v8, v6, Lcom/voovio/sweep/Template$Position;->m_fAvance:F

    mul-float/2addr v8, p1

    iput v8, v5, Lcom/voovio/sweep/Template$Position;->m_fAvance:F

    iget v8, v6, Lcom/voovio/sweep/Template$Position;->m_fLateral:F

    mul-float/2addr v8, p1

    iput v8, v5, Lcom/voovio/sweep/Template$Position;->m_fLateral:F

    iget v8, v6, Lcom/voovio/sweep/Template$Position;->m_fAltura:F

    mul-float/2addr v8, p1

    iput v8, v5, Lcom/voovio/sweep/Template$Position;->m_fAltura:F

    iget v8, v6, Lcom/voovio/sweep/Template$Position;->m_fAngulo:F

    iput v8, v5, Lcom/voovio/sweep/Template$Position;->m_fAngulo:F

    iget v8, v6, Lcom/voovio/sweep/Template$Position;->m_fOffset:F

    mul-float/2addr v8, p1

    iput v8, v5, Lcom/voovio/sweep/Template$Position;->m_fOffset:F

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    aput-object v5, v8, v2

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    new-array v0, v8, [Z

    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    if-lt v3, v8, :cond_1

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_abVisible:[[Z

    aput-object v0, v8, v2

    iget v8, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    new-array v1, v8, [F

    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lcom/voovio/sweep/Template;->m_nSteps:I

    if-lt v3, v8, :cond_2

    iget-object v8, v7, Lcom/voovio/sweep/Template;->m_afAlpha:[[F

    aput-object v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v8, p0, Lcom/voovio/sweep/Template;->m_abVisible:[[Z

    aget-object v8, v8, v2

    aget-boolean v8, v8, v3

    aput-boolean v8, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/voovio/sweep/Template;->m_afAlpha:[[F

    aget-object v8, v8, v2

    aget v8, v8, v3

    aput v8, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Template;->m_bmdIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getIconId()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/voovio/sweep/Template;->m_nId:I

    return v0
.end method

.method public getImageAspect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Template;->m_strImageAspect:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method public isRotation()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/voovio/sweep/Template;->m_fAngulo:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setGroupId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    return-void
.end method

.method setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/voovio/sweep/Template;->m_bmdIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method setIconId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    return-void
.end method

.method setId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/voovio/sweep/Template;->m_nId:I

    return-void
.end method

.method setImageAspect(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/voovio/sweep/Template;->m_strImageAspect:Ljava/lang/String;

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Lcom/voovio/sweep/Template;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/voovio/sweep/Template;->m_nId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/voovio/sweep/Template;->m_nGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/voovio/sweep/Template;->m_nIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

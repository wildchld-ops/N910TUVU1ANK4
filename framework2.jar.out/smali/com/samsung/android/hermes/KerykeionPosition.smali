.class public Lcom/samsung/android/hermes/KerykeionPosition;
.super Ljava/lang/Object;
.source "KerykeionPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/KerykeionPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hermes/KerykeionPosition$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/KerykeionPosition$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/KerykeionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    iget v2, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    iget v3, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    iget v4, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/hermes/KerykeionPosition;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Landroid/hardware/camera2/impl/MetadataMarshalRect;
.super Ljava/lang/Object;
.source "MetadataMarshalRect.java"

# interfaces
.implements Landroid/hardware/camera2/impl/MetadataMarshalClass;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/impl/MetadataMarshalClass",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarshalingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNativeSize(I)I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public isNativeTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;IZ)I
    .locals 2

    const/16 v1, 0x10

    if-eqz p4, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .locals 1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalRect;->marshal(Landroid/graphics/Rect;Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;I)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int v3, v2, v5

    add-int v0, v4, v1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/MetadataMarshalRect;->unmarshal(Ljava/nio/ByteBuffer;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/orca/shop/client/library/AnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationFrame"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private duration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->duration:I

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/orca/shop/client/library/AnimationBuilder$AnimationFrame;->duration:I

    return-void
.end method

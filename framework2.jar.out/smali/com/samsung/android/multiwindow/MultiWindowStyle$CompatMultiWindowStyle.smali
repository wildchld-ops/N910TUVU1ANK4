.class Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatMultiWindowStyle"
.end annotation


# instance fields
.field mMode:I

.field mOption:I

.field mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mZone:I

.field final synthetic this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->this$0:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mMode:I

    and-int/lit8 v0, p3, 0xf

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    const v0, 0xffff00

    and-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    return-void
.end method


# virtual methods
.method getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getOption()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method getOption()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x200

    :cond_6
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x400

    :cond_7
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x800

    :cond_8
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mOption:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x2000

    :cond_9
    return v0
.end method

.method getType()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mMode:I

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mMode:I

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getZone()I
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v5, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    if-ne v5, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    const/16 v5, 0xc

    if-ne v0, v5, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    if-ne v0, v4, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->mZone:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    const/16 v0, 0xf

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

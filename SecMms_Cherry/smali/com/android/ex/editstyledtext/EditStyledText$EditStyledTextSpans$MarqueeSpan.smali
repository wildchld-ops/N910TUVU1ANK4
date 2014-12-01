.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarqueeSpan"
.end annotation


# static fields
.field public static final ALTERNATE:I = 0x1

.field public static final NOTHING:I = 0x2

.field public static final SCROLL:I


# instance fields
.field private mMarqueeColor:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const v0, 0xffffff

    invoke-direct {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->checkType(I)Z

    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    return-void
.end method

.method private checkType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "EditStyledTextSpan"

    const-string v1, "--- Invalid type of MarqueeSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMarqueeColor(II)I
    .locals 8

    const v5, 0xffffff

    const/16 v0, 0x80

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-nez v1, :cond_0

    const/16 v1, 0x80

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v6, "EditStyledText"

    const-string v7, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    if-le v4, v0, :cond_1

    div-int/lit8 v4, v4, 0x2

    :goto_1
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_0

    :cond_1
    rsub-int v5, v4, 0xff

    div-int/lit8 v4, v5, 0x2

    goto :goto_1

    :pswitch_2
    if-le v3, v0, :cond_2

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    rsub-int v5, v3, 0xff

    div-int/lit8 v3, v5, 0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    return v0
.end method

.method public resetColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method

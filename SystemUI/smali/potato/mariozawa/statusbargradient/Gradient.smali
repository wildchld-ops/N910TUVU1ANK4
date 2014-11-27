.class public Lpotato/mariozawa/statusbargradient/Gradient;
.super Landroid/widget/LinearLayout;
.source "Gradient.java"


# instance fields
.field private bottom_color:Ljava/lang/String;

.field private bottomcol:I

.field private first_color:Ljava/lang/String;

.field private firstcol:I

.field private fourth_color:Ljava/lang/String;

.field private fourthcol:I

.field private gradient_orientation:I

.field private gradient_style:I

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private second_color:Ljava/lang/String;

.field private secondcol:I

.field private third_color:Ljava/lang/String;

.field private thirdcol:I

.field private top_color:Ljava/lang/String;

.field private topcol:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lpotato/mariozawa/statusbargradient/Gradient$1;

    invoke-direct {v0, p0}, Lpotato/mariozawa/statusbargradient/Gradient$1;-><init>(Lpotato/mariozawa/statusbargradient/Gradient;)V

    iput-object v0, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->setBackground()V

    return-void
.end method

.method static synthetic access$0(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->top_color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->bottom_color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->first_color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->second_color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->third_color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->fourth_color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lpotato/mariozawa/statusbargradient/Gradient;I)V
    .locals 0

    iput p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_style:I

    return-void
.end method

.method static synthetic access$7(Lpotato/mariozawa/statusbargradient/Gradient;I)V
    .locals 0

    iput p1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    return-void
.end method

.method static synthetic access$8(Lpotato/mariozawa/statusbargradient/Gradient;)V
    .locals 0

    invoke-direct {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->setBackground()V

    return-void
.end method

.method private setBackground()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_style"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_style:I

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_top"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->top_color:Ljava/lang/String;

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_bottom"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->bottom_color:Ljava/lang/String;

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_first_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->first_color:Ljava/lang/String;

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_second_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->second_color:Ljava/lang/String;

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_third_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->third_color:Ljava/lang/String;

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_fourth_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->fourth_color:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->top_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->topcol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->bottom_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->bottomcol:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->first_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->firstcol:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->second_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->secondcol:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->third_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->thirdcol:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->fourth_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->fourthcol:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_style:I

    if-ne v1, v4, :cond_1

    :try_start_6
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->bottomcol:I

    iget v2, p0, Lpotato/mariozawa/statusbargradient/Gradient;->topcol:I

    invoke-virtual {p0, v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->setGradientColors(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_0
    :goto_6
    return-void

    :catch_0
    move-exception v0

    iput v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->topcol:I

    goto :goto_0

    :catch_1
    move-exception v0

    iput v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->bottomcol:I

    goto :goto_1

    :catch_2
    move-exception v0

    iput v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->firstcol:I

    goto :goto_2

    :catch_3
    move-exception v0

    iput v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->secondcol:I

    goto :goto_3

    :catch_4
    move-exception v0

    iput v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->thirdcol:I

    goto :goto_4

    :catch_5
    move-exception v0

    iput v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->fourthcol:I

    goto :goto_5

    :catch_6
    move-exception v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v3}, Lpotato/mariozawa/statusbargradient/Gradient;->setGradientColors(II)V

    goto :goto_6

    :cond_1
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_style:I

    if-ne v1, v5, :cond_0

    :try_start_7
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->firstcol:I

    iget v2, p0, Lpotato/mariozawa/statusbargradient/Gradient;->secondcol:I

    iget v3, p0, Lpotato/mariozawa/statusbargradient/Gradient;->thirdcol:I

    iget v4, p0, Lpotato/mariozawa/statusbargradient/Gradient;->fourthcol:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lpotato/mariozawa/statusbargradient/Gradient;->setGradientColorsFour(IIII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    const/high16 v1, -0x10000

    const/16 v2, -0x100

    const v3, -0xff0100

    const v4, -0xff01

    invoke-virtual {p0, v1, v2, v3, v4}, Lpotato/mariozawa/statusbargradient/Gradient;->setGradientColorsFour(IIII)V

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.potato.gradient"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->setBackground()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpotato/mariozawa/statusbargradient/Gradient;->mAttached:Z

    :cond_0
    return-void
.end method

.method public setGradientColors(II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_orientation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p1, v2, v4

    aput p2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    if-ne v1, v3, :cond_1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :cond_0
    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0, v0}, Lpotato/mariozawa/statusbargradient/Gradient;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    if-ne v1, v5, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_7
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v5, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_0
.end method

.method public setGradientColorsFour(IIII)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gradient_orientation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    if-ne v1, v3, :cond_1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :cond_0
    :goto_0
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0, v0}, Lpotato/mariozawa/statusbargradient/Gradient;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    if-ne v1, v5, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    if-ne v1, v6, :cond_3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    if-ne v1, v7, :cond_4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lpotato/mariozawa/statusbargradient/Gradient;->gradient_orientation:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    aput p4, v2, v4

    aput p3, v2, v3

    aput p2, v2, v5

    aput p1, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto/16 :goto_0
.end method

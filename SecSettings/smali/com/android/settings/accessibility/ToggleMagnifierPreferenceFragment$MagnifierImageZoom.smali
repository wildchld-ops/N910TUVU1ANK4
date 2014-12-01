.class public Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;
.super Landroid/preference/Preference;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierImageZoom"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEnabled:Z

.field mIsLongkeyProcessing:Z

.field private mMinusMagnifier:Landroid/widget/ImageView;

.field private mPlusMagnifier:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTitle:Landroid/widget/TextView;

.field private mZoomLayer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    const v0, 0x7f04013b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f0b030b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    const v2, 0x7f0b030a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0b030d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    const v2, 0x7f0b030e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v2, 0x7f0b030c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    const-string v2, "ToggleMagnifierPreferenceFragment"

    const-string v3, "setProgress in onBindDialogView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v3, v0, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v2, "ToggleMagnifierPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MagnifierImageZoom onBindView mEnbaeld before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_magnifier"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    :goto_0
    const-string v2, "ToggleMagnifierPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MagnifierImageZoom onBindView mEnbaeld after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020460

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f02045f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3e4ccccd

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020050

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b030c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$1;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$2;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b030c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    div-int/lit8 v0, p2, 0x7

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 p2, v0, 0x7

    const-string v0, "ToggleMagnifierPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hover_zoom_value"

    div-int/lit8 v2, p2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    div-int/lit8 v1, p2, 0x7

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->refreshImageView(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V

    const-string v0, "ToggleMagnifierPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnifierImageZoom refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabledZoomButton(Z)V
    .locals 3

    const-string v0, "ToggleMagnifierPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnifierImageZoom setEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ToggleMagnifierPreferenceFragment"

    const-string v1, "MagnifierImageZoom is not binded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020460

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f02045f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

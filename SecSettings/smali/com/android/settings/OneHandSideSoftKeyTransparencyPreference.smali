.class public Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "OneHandSideSoftKeyTransparencyPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheck:I

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mDonotshowObserver:Landroid/database/ContentObserver;

.field private mOldCheck:I

.field private mOldTransparency:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTouchInProgress:Z

.field private mTransparency:I

.field private mTransparencyObserver:Landroid/database/ContentObserver;

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x63

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->max:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    new-instance v0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$1;-><init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference$2;-><init>(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mDonotshowObserver:Landroid/database/ContentObserver;

    const v0, 0x7f0401b3

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->onTransparencyChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->onDonotshowChanged()V

    return-void
.end method

.method private onDonotshowChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTransparencyChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private restoreOldState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldTransparency:I

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_transparency"

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldCheck:I

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mRestoredOldState:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v1, 0x7f0b0282

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->max:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMin(I)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_transparency"

    const/16 v3, 0x63

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldTransparency:I

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldTransparency:I

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->min:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0b02da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_donotshow"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldCheck:I

    iget v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mOldCheck:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_transparency"

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_donotshow"

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mCheck:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "_Sidesoftkey_Transparency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positiveResult : mTransparency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mDonotshowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->restoreOldState()V

    const-string v1, "_Sidesoftkey_Transparency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negativeResult : mTransparency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_transparency"

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "_Sidesoftkey_Transparency"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : mTransparency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTouchInProgress:Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_transparency"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mTransparencyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_donotshow"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mDonotshowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->mRestoredOldState:Z

    return-void
.end method

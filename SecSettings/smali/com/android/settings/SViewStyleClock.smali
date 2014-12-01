.class public Lcom/android/settings/SViewStyleClock;
.super Landroid/app/Activity;
.source "SViewStyleClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;
    }
.end annotation


# instance fields
.field private mCoverStyleClockObserver:Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

.field mImageButtonArray:[Landroid/widget/ImageButton;

.field private mImageButtonListener:Landroid/view/View$OnClickListener;

.field private mIsChangedInside:Z

.field private mItemIndex:I

.field private mPreview:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z

    new-instance v0, Lcom/android/settings/SViewStyleClock$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewStyleClock$3;-><init>(Lcom/android/settings/SViewStyleClock;)V

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewStyleClock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SViewStyleClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SViewStyleClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SViewStyleClock;->setfocusButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SViewStyleClock;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/SViewStyleClock;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/SViewStyleClock;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SViewStyleClock;->showGuidePopup()Z

    move-result v0

    return v0
.end method

.method private setfocusButton()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f02069c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private showGuidePopup()Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v8, "com.android.settings.SViewStyleClock"

    invoke-virtual {p0, v8, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, "DoNotShowDialog"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f040081

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0b0197

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f090da5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f090da4

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/SViewStyleClock$4;

    invoke-direct {v8, p0, v3}, Lcom/android/settings/SViewStyleClock$4;-><init>(Lcom/android/settings/SViewStyleClock;Landroid/view/View;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method public configureActionBar()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v4, 0x7f040064

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0b013b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/SViewStyleClock$1;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewStyleClock$1;-><init>(Lcom/android/settings/SViewStyleClock;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b013c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f091858

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/android/settings/SViewStyleClock$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewStyleClock$2;-><init>(Lcom/android/settings/SViewStyleClock;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getItemIndex()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    :goto_0
    const-string v1, "SViewStyleClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemIndex STYLIZED_CLOCK_STYLE_KEY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mItemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040240

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->configureActionBar()V

    new-instance v0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;-><init>(Lcom/android/settings/SViewStyleClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mCoverStyleClockObserver:Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mImageButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewStyleClock;->mCoverStyleClockObserver:Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->getItemIndex()V

    invoke-virtual {p0}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    invoke-direct {p0}, Lcom/android/settings/SViewStyleClock;->setfocusButton()V

    return-void
.end method

.method protected saveDB()V
    .locals 4

    iget v1, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SViewStyleClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SaveDB  STYLIZED_CLOCK_STYLE_KEY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mItemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setPreview()V
    .locals 2

    iget v0, p0, Lcom/android/settings/SViewStyleClock;->mItemIndex:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0203ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0203fc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0203fd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f0203fe

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

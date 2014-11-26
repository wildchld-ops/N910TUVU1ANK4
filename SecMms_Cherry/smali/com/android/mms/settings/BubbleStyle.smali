.class public Lcom/android/mms/settings/BubbleStyle;
.super Lcom/android/mms/settings/DisplayStyleActivity;
.source "BubbleStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/settings/BubbleStyle$ImageAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/BubbleStyle"


# instance fields
.field private final BUBBLE_TYPE_IMAGE_HEIGHT:I

.field private final BUBBLE_TYPE_IMAGE_WIDTH:I

.field private MoveToSelectedReceive:Z

.field private mImageAdapter:Lcom/android/mms/settings/BubbleStyle$ImageAdapter;

.field private mMenuSave:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z

    iput v1, p0, Lcom/android/mms/settings/BubbleStyle;->BUBBLE_TYPE_IMAGE_WIDTH:I

    iput v1, p0, Lcom/android/mms/settings/BubbleStyle;->BUBBLE_TYPE_IMAGE_HEIGHT:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/BubbleStyle;)Lcom/android/mms/settings/BubbleStyle$ImageAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/settings/BubbleStyle;

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle;->mImageAdapter:Lcom/android/mms/settings/BubbleStyle$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/settings/BubbleStyle;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Lcom/android/mms/settings/BubbleStyle;->setScrollPositionVertical()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/settings/BubbleStyle;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Lcom/android/mms/settings/BubbleStyle;->setScrollPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/settings/BubbleStyle;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/mms/settings/BubbleStyle;

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle;->mMenuSave:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/settings/BubbleStyle;)Z
    .locals 1
    .param p0    # Lcom/android/mms/settings/BubbleStyle;

    iget-boolean v0, p0, Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/settings/BubbleStyle;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/settings/BubbleStyle;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z

    return p1
.end method

.method private refreshLayout()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/settings/DisplayStyleActivity;->refreshLayout(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/settings/BubbleStyle;->setGalleryData()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private saveBubbleReceiveStyle(I)V
    .locals 5
    .param p1    # I

    sget-object v3, Lcom/android/mms/settings/BubbleStyle;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    rem-int/lit8 v2, v3, 0xa

    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private saveBubbleSentStyle(I)V
    .locals 5
    .param p1    # I

    sget-object v3, Lcom/android/mms/settings/BubbleStyle;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0xa

    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setGalleryData()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    :goto_0
    new-instance v1, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/settings/BubbleStyle$ImageAdapter;-><init>(Lcom/android/mms/settings/BubbleStyle;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/settings/BubbleStyle;->mImageAdapter:Lcom/android/mms/settings/BubbleStyle$ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$4;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$4;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$5;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$5;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$6;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$6;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridView:Landroid/widget/GridView;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_1
.end method

.method private setScrollPosition()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$7;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$7;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setScrollPositionVertical()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$8;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$8;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final makeView()V
    .locals 0

    invoke-super {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->makeView()V

    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setActionBar()V

    invoke-direct {p0}, Lcom/android/mms/settings/BubbleStyle;->refreshLayout()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    if-nez p1, :cond_0

    const-string v1, "Mms/BubbleStyle"

    const-string v2, "View v is null return!!!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleSentIndex:I

    invoke-direct {p0, v1}, Lcom/android/mms/settings/BubbleStyle;->saveBubbleSentStyle(I)V

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-direct {p0, v1}, Lcom/android/mms/settings/BubbleStyle;->saveBubbleReceiveStyle(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$3;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$3;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b016e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/mms/settings/BubbleStyle;->refreshLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b01e7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$1;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$1;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b01ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/settings/BubbleStyle$2;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BubbleStyle$2;-><init>(Lcom/android/mms/settings/BubbleStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/mms/settings/BubbleStyle;->makeView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/settings/BubbleStyle;->MoveToSelectedReceive:Z

    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setWindowResizingEventHandler()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v1, Lcom/android/mms/settings/BubbleStyle;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.class Landroid/webkitsec/WebSelectDialog;
.super Landroid/app/Dialog;
.source "WebSelectDialog.java"


# static fields
.field public static final BUTTON_DONE:I = 0x3

.field public static final BUTTON_NEXT:I = 0x1

.field public static final BUTTON_PREV:I = 0x2

.field static final LOGTAG:Ljava/lang/String; = "WebSelectDialog"


# instance fields
.field mContentPanel:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mDoneButton:Landroid/view/View;

.field private mDoneButtonEnabled:Z

.field private mDoneInputListener:Landroid/view/View$OnClickListener;

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mLandscapeViewHeight:I

.field private mListView:Landroid/widget/ListView;

.field private mNextButton:Landroid/view/View;

.field private mNextButtonEnabled:Z

.field private mNextInputListener:Landroid/view/View$OnClickListener;

.field private mPortraitViewHeight:I

.field private mPrevButton:Landroid/view/View;

.field private mPrevButtonEnabled:Z

.field private mPrevInputListener:Landroid/view/View$OnClickListener;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field private mWebSetting:Landroid/webkitsec/WebSettingsClassic;

.field private misESSBrowser:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebSettingsClassic;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x103035a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Landroid/webkitsec/WebSelectDialog;->mNextButtonEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebSelectDialog;->mPrevButtonEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebSelectDialog;->mDoneButtonEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebSelectDialog;->misESSBrowser:Z

    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkitsec/WebSelectDialog;->mTmpLocation:[I

    iput v1, p0, Landroid/webkitsec/WebSelectDialog;->mPortraitViewHeight:I

    iput v1, p0, Landroid/webkitsec/WebSelectDialog;->mLandscapeViewHeight:I

    iput v2, p0, Landroid/webkitsec/WebSelectDialog;->mCurrentOrientation:I

    new-instance v0, Landroid/webkitsec/WebSelectDialog$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebSelectDialog$1;-><init>(Landroid/webkitsec/WebSelectDialog;)V

    iput-object v0, p0, Landroid/webkitsec/WebSelectDialog;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object p2, p0, Landroid/webkitsec/WebSelectDialog;->mWebSetting:Landroid/webkitsec/WebSettingsClassic;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WebSelectDialog"

    const-string v2, "Invalid dialog dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebSelectDialog;->mTmpLocation:[I

    iget-object v2, p0, Landroid/webkitsec/WebSelectDialog;->mContentPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebSelectDialog;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebSelectDialog;->mContentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    aget v2, v1, v5

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    aget v2, v1, v5

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    const-string v2, "WebSelectDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentInsets:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v5

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x1050184

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/webkitsec/WebSelectDialog;->mWebSetting:Landroid/webkitsec/WebSettingsClassic;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkitsec/WebSelectDialog;->mWebSetting:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/webkitsec/WebSelectDialog;->mPortraitViewHeight:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/webkitsec/WebSelectDialog;->mLandscapeViewHeight:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.browser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kanas3gzn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kanas3gzm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ageraltezm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/WebSelectDialog;->misESSBrowser:Z

    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/WebSelectDialog;->misESSBrowser:Z

    if-nez v2, :cond_3

    const v2, 0x1090152

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Landroid/webkitsec/WebSelectDialog;->rebuildView()V

    invoke-virtual {p0}, Landroid/webkitsec/WebSelectDialog;->onWebViewSizeChanged()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/webkitsec/WebSelectDialog;->mPortraitViewHeight:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050185

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/webkitsec/WebSelectDialog;->mLandscapeViewHeight:I

    goto :goto_0

    :cond_3
    const v2, 0x1090153

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_1
.end method

.method public onWebViewSizeChanged()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Landroid/webkitsec/WebSelectDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    const v2, 0x102048f

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/webkitsec/WebSelectDialog;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/webkitsec/WebSelectDialog;->mLandscapeViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Landroid/webkitsec/WebSelectDialog;->mPortraitViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public rebuildView()V
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x102048c

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v6, p0, Landroid/webkitsec/WebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v6, p0, Landroid/webkitsec/WebSelectDialog;->mNextButtonEnabled:Z

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mWebSetting:Landroid/webkitsec/WebSettingsClassic;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mWebSetting:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    const-class v6, Landroid/view/WindowManager$LayoutParams;

    const-string v7, "TYPE_MINI_APP_DIALOG"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_0
    :goto_0
    iput-object v0, p0, Landroid/webkitsec/WebSelectDialog;->mNextButton:Landroid/view/View;

    const v6, 0x102048b

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v6, p0, Landroid/webkitsec/WebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v6, p0, Landroid/webkitsec/WebSelectDialog;->mPrevButtonEnabled:Z

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    iput-object v0, p0, Landroid/webkitsec/WebSelectDialog;->mPrevButton:Landroid/view/View;

    const v6, 0x102048e

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v6, p0, Landroid/webkitsec/WebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v6, p0, Landroid/webkitsec/WebSelectDialog;->mDoneButtonEnabled:Z

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    iput-object v0, p0, Landroid/webkitsec/WebSelectDialog;->mDoneButton:Landroid/view/View;

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    const v6, 0x1020490

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/webkitsec/WebSelectDialog;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    const-string v6, "WebSelectDialog"

    const-string v7, "SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "WebSelectDialog"

    const-string v7, "NoSuchFieldException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "WebSelectDialog"

    const-string v7, "IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v6, 0xbb6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method setButtonEnabled(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean p2, p0, Landroid/webkitsec/WebSelectDialog;->mNextButtonEnabled:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Landroid/webkitsec/WebSelectDialog;->mPrevButtonEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Landroid/webkitsec/WebSelectDialog;->mDoneButtonEnabled:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Landroid/webkitsec/WebSelectDialog;->mNextInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/webkitsec/WebSelectDialog;->mPrevInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/webkitsec/WebSelectDialog;->mDoneInputListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setListView(Landroid/widget/ListView;)V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/WebSelectDialog;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    const v1, 0x1020490

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/webkitsec/WebSelectDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/WebSelectDialog;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

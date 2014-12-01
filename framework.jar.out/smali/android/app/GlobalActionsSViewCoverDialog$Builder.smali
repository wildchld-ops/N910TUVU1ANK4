.class public Landroid/app/GlobalActionsSViewCoverDialog$Builder;
.super Ljava/lang/Object;
.source "GlobalActionsSViewCoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/GlobalActionsSViewCoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field backgroundColor:I

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Landroid/app/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private getBackgroundColor()I
    .locals 7

    const/16 v6, 0x77

    const/16 v5, 0x6b

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "s_vew_cover_background_color"

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_bg_display_random"

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->backgroundColor:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public create()Landroid/app/GlobalActionsSViewCoverDialog;
    .locals 15

    const/high16 v14, -0x1000000

    const v13, 0x102001a

    const v10, 0x1020019

    const/4 v12, -0x1

    const/4 v11, -0x2

    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    new-instance v1, Landroid/app/GlobalActionsSViewCoverDialog;

    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    const v9, 0x10301e6

    invoke-direct {v1, v8, v9}, Landroid/app/GlobalActionsSViewCoverDialog;-><init>(Landroid/content/Context;I)V

    const v8, 0x109005a

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v12, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v8}, Landroid/app/GlobalActionsSViewCoverDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x10202dd

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v8}, Landroid/app/GlobalActionsSViewCoverDialog;->access$002(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v8, 0x10202e0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    new-instance v9, Landroid/app/GlobalActionsSViewCoverDialog$Builder$1;

    invoke-direct {v9, p0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder$1;-><init>(Landroid/app/GlobalActionsSViewCoverDialog$Builder;Landroid/app/GlobalActionsSViewCoverDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iget-object v9, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    new-instance v9, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;

    invoke-direct {v9, p0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder$2;-><init>(Landroid/app/GlobalActionsSViewCoverDialog$Builder;Landroid/app/GlobalActionsSViewCoverDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iget-object v9, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    if-eqz v8, :cond_5

    const v8, 0x102000b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/app/GlobalActionsSViewCoverDialog;->access$302(Landroid/widget/TextView;)Landroid/widget/TextView;

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$300()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x1020324

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->messageViewContainer:Landroid/widget/ScrollView;
    invoke-static {v8}, Landroid/app/GlobalActionsSViewCoverDialog;->access$402(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    :cond_0
    :goto_2
    invoke-virtual {v1, v5}, Landroid/app/GlobalActionsSViewCoverDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v8, 0x30

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v8, "americano"

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mScafe:Ljava/lang/String;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$500()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->getBackgroundColor()I

    move-result v8

    # setter for: Landroid/app/GlobalActionsSViewCoverDialog;->mCoverColor:I
    invoke-static {v8}, Landroid/app/GlobalActionsSViewCoverDialog;->access$602(I)I

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$000()Landroid/widget/ImageView;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_3
    if-nez v4, :cond_1

    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$000()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v8, v7

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$000()Landroid/widget/ImageView;

    move-result-object v8

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mCoverColor:I
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mCoverColor:I
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$600()I

    move-result v8

    if-ne v8, v14, :cond_6

    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$000()Landroid/widget/ImageView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    :goto_4
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v12, v12}, Landroid/view/Window;->setLayout(II)V

    return-object v1

    :cond_3
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v8, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v8, :cond_0

    const v8, 0x10202ee

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v8, 0x10202ee

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v8, "GlobalActionsSViewCoverDialog"

    const-string v9, "Remote exception while to check isStatusBarVisible"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    # getter for: Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {}, Landroid/app/GlobalActionsSViewCoverDialog;->access$000()Landroid/widget/ImageView;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_4
.end method

.method public setContentView(Landroid/view/View;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonText:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonText:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

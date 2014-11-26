.class public Lcom/android/mms/help/AirViewMainActivity;
.super Landroid/app/Activity;
.source "AirViewMainActivity.java"


# static fields
.field static guideView:Landroid/view/View;

.field static hoverTextLayout:Landroid/view/View;

.field static infoCompleteBubble:Landroid/widget/Button;

.field static mHasHovered:Z

.field static mHoverListener:Landroid/view/View$OnHoverListener;


# instance fields
.field MENU_COMPOSE:I

.field details:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/help/MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

.field private mTotalConversations:Landroid/widget/TextView;

.field private mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field msgList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/AirViewMainActivity;->mHasHovered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/help/AirViewMainActivity;->MENU_COMPOSE:I

    return-void
.end method

.method public static hideInfoBubble(Landroid/app/Activity;)V
    .locals 4
    .param p0    # Landroid/app/Activity;

    sget-object v0, Lcom/android/mms/help/AirViewMainActivity;->infoCompleteBubble:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/help/AirViewMainActivity;->infoCompleteBubble:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirViewMainActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirViewMainActivity$2;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isSPenInformationPreviewOn()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1    # Landroid/content/res/Configuration;

    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const v5, 0x7f0b0068

    const v4, 0x7f0b0061

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/mms/help/TwHelpAnimatedDialog;->stopAnimation_land()V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/mms/help/TwHelpAnimatedDialog;->stopAnimation_pot()V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget-object v2, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f04001c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableLandscapeModeonActivity()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const v6, 0x7f0b006f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    const v6, 0x7f0b0070

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    sput-object v6, Lcom/android/mms/help/AirViewMainActivity;->infoCompleteBubble:Landroid/widget/Button;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/help/MessageDetails;

    invoke-direct {v1}, Lcom/android/mms/help/MessageDetails;-><init>()V

    const v6, 0x7f020282

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setIcon(I)V

    const-string v6, "111-444-7777"

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setSub(Ljava/lang/String;)V

    const-string v6, "12:06"

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setTime(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/mms/help/MessageDetails;

    invoke-direct {v1}, Lcom/android/mms/help/MessageDetails;-><init>()V

    const v6, 0x7f020283

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setIcon(I)V

    const-string v6, "222-555-8888"

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setSub(Ljava/lang/String;)V

    const-string v6, "12:06"

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setTime(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/mms/help/MessageDetails;

    invoke-direct {v1}, Lcom/android/mms/help/MessageDetails;-><init>()V

    const v6, 0x7f020285

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setIcon(I)V

    const-string v6, "333-000-9999"

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c3

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "111-1111-1111"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "222-2222-2222"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "333-3333-3333"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setSub(Ljava/lang/String;)V

    const-string v6, "09:19"

    invoke-virtual {v1, v6}, Lcom/android/mms/help/MessageDetails;->setTime(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04003c

    iget-object v7, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0b014a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversations:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    iget-object v9, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/mms/help/AirViewMainActivity;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v6, p0, Lcom/android/mms/help/AirViewMainActivity;->msgList:Landroid/widget/ListView;

    new-instance v7, Lcom/android/mms/help/AirViewListAdapter;

    const v8, 0x7f04001b

    iget-object v9, p0, Lcom/android/mms/help/AirViewMainActivity;->details:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/mms/help/AirViewListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v6, 0x7f04005c

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/mms/help/AirViewMainActivity;->showDialog(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v7, 0x7f0b0061

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v7, 0x7f0b01c8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportFingerAirView()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportSPenHoveringNDetachment()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/android/mms/help/AirViewMainActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/help/AirViewMainActivity$1;-><init>(Lcom/android/mms/help/AirViewMainActivity;)V

    sput-object v6, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->mHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    :cond_1
    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v7, 0x7f0b0068

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->guideView:Landroid/view/View;

    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    sput-object v6, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    sget-object v6, Lcom/android/mms/help/AirViewMainActivity;->hoverTextLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x3

    const v7, 0x7f0b0068

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportFingerAirView()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportSPenHoveringNDetachment()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportFingerAirView()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportSPenHoveringNDetachment()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/mms/help/AirViewMainActivity;->MENU_COMPOSE:I

    const v1, 0x7f0c0002

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected showDialog(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog;

    const v1, 0x7f0e0015

    invoke-direct {v0, p0, v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/mms/help/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/mms/help/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v1, Lcom/android/mms/help/AirViewMainActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirViewMainActivity$3;-><init>(Lcom/android/mms/help/AirViewMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

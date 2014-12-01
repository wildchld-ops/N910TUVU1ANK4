.class final Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickShortcutButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10204000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2200(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$1900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickShortcutButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$1900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "RecentsPanelView"

    const-string v4, "Activity(ShortCut) Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f080028
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

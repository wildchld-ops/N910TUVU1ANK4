.class Lcom/android/mms/ui/MessageListItem$36;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$3600(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$10200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v4, 0x2

    new-array v1, v4, [I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$10300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/QuickContactBadge;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mAvatarViewMe:Landroid/widget/QuickContactBadge;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$10300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/QuickContactBadge;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/QuickContactBadge;->getLocationOnScreen([I)V

    aget v4, v1, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    aget v4, v1, v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    aget v4, v1, v5

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    aget v4, v1, v7

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->getLocalProfileUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/android/mms/util/PackageInfo;->callQuickContact(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem$36;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createLocalProfileIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.class Lcom/android/mms/ui/MessageListItem$35;
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

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$3600(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    iget-object v0, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$10000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v5, 0x2

    new-array v3, v5, [I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$10100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/QuickContactBadge;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mAvatarView:Landroid/widget/QuickContactBadge;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$10100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/QuickContactBadge;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/QuickContactBadge;->getLocationOnScreen([I)V

    aget v5, v3, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    aget v5, v3, v8

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    aget v5, v3, v6

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    aget v5, v3, v8

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/mms/util/PackageInfo;->callQuickContact(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$35;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

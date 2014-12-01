.class Lcom/android/mms/ui/ConversationListItem$1;
.super Ljava/lang/Object;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListItem;->access$000(Lcom/android/mms/ui/ConversationListItem;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListItem;->access$000(Lcom/android/mms/ui/ConversationListItem;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListItem;->access$000(Lcom/android/mms/ui/ConversationListItem;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c03ce

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    goto :goto_0
.end method

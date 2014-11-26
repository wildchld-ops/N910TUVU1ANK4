.class Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    iput p2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    iget v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->onSelectItem(I)V

    return-void
.end method

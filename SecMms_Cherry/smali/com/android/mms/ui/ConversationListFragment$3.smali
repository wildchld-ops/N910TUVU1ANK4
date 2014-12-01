.class Lcom/android/mms/ui/ConversationListFragment$3;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$3;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p3, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->intersects(Landroid/view/View;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$3;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->extractDefaultSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$3;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$3;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSmartClip:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->clearAllMetaTag()V

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "app_deep_link"

    const-string v4, "appto://com.android.mms/list"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

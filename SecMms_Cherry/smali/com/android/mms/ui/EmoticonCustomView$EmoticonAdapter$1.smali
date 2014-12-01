.class Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$1;
.super Ljava/lang/Object;
.source "EmoticonCustomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->getTextView()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$1;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$1;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonCustomView;->access$700(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

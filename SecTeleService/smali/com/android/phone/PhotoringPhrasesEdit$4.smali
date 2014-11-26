.class Lcom/android/phone/PhotoringPhrasesEdit$4;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoringPhrasesEdit;->showAttachMenuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoringPhrasesEdit$4;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit$4;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/PhotoringPhrasesEdit;->attachMenuSelected(I)V
    invoke-static {v1, v2}, Lcom/android/phone/PhotoringPhrasesEdit;->access$300(Lcom/android/phone/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit$4;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/PhotoringPhrasesEdit;->attachMenuSelected(I)V
    invoke-static {v1, v2}, Lcom/android/phone/PhotoringPhrasesEdit;->access$300(Lcom/android/phone/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit$4;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    const/4 v2, 0x2

    # invokes: Lcom/android/phone/PhotoringPhrasesEdit;->attachMenuSelected(I)V
    invoke-static {v1, v2}, Lcom/android/phone/PhotoringPhrasesEdit;->access$300(Lcom/android/phone/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/PhotoringPhrasesEdit$4;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    const/4 v2, 0x3

    # invokes: Lcom/android/phone/PhotoringPhrasesEdit;->attachMenuSelected(I)V
    invoke-static {v1, v2}, Lcom/android/phone/PhotoringPhrasesEdit;->access$300(Lcom/android/phone/PhotoringPhrasesEdit;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0182 -> :sswitch_0
        0x7f0a0185 -> :sswitch_1
        0x7f0a0188 -> :sswitch_2
        0x7f0a018b -> :sswitch_3
    .end sparse-switch
.end method

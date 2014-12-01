.class Lcom/android/phone/callsettings/DeletePrefix$9;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$9;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$9;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$9;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$9;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->updatePrefixNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$100(Lcom/android/phone/callsettings/DeletePrefix;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$9;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v0, v0, Lcom/android/phone/callsettings/DeletePrefix;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

.field final synthetic val$position:I

.field final synthetic val$selectedCheckbox:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$selectedCheckbox:Landroid/view/View;

    iput p4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-lez v1, :cond_4

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$selectedCheckbox:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v4, :cond_5

    move v4, v3

    :goto_1
    invoke-interface {v1, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$selectedCheckbox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "unknown_mode_jpn"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawnormalscreen checkedStates before "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1600(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$position:I

    if-nez v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$position:I

    if-ne v1, v3, :cond_1

    xor-int/lit8 v0, v0, 0xa

    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$position:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    xor-int/lit8 v0, v0, 0x64

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawnormalscreen checkedStates after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$1600(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v4, v2

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->this$1:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;->val$item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1700(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_2
.end method

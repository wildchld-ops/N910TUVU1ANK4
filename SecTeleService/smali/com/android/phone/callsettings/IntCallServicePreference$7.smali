.class Lcom/android/phone/callsettings/IntCallServicePreference$7;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallServicePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$7;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$7;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v0, v0, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$7;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    # invokes: Lcom/android/phone/callsettings/IntCallServicePreference;->autoClicked()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->access$000(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$7;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    # invokes: Lcom/android/phone/callsettings/IntCallServicePreference;->positiveButtonClicked()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->access$300(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$7;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

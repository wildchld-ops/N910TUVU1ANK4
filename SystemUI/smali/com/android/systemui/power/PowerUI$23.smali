.class Lcom/android/systemui/power/PowerUI$23;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showHighVoltageChargerNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;

.field final synthetic val$highVoltageChargerSharedPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$23;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object p2, p0, Lcom/android/systemui/power/PowerUI$23;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/power/PowerUI$23;->val$highVoltageChargerSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$23;->val$v:Landroid/view/View;

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$23;->val$highVoltageChargerSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighVoltageChargerNotice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$23;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerUI;->notifyHighVoltageChargerNotification()V

    return-void
.end method

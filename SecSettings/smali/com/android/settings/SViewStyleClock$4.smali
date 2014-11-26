.class Lcom/android/settings/SViewStyleClock$4;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewStyleClock;->showGuidePopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    iput-object p2, p0, Lcom/android/settings/SViewStyleClock$4;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$4;->val$layout:Landroid/view/View;

    const v4, 0x7f0b0198

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const-string v4, "com.android.settings.SViewStyleClock"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SViewStyleClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "DoNotShowDialog"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v3}, Lcom/android/settings/SViewStyleClock;->saveDB()V

    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v3}, Lcom/android/settings/SViewStyleClock;->finish()V

    return-void
.end method

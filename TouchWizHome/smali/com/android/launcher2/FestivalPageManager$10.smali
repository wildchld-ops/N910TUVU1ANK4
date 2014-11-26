.class Lcom/android/launcher2/FestivalPageManager$10;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FestivalPageManager;

.field final synthetic val$festivalKey:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager$10;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iput p2, p0, Lcom/android/launcher2/FestivalPageManager$10;->val$festivalKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$10;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget-object v2, v2, Lcom/android/launcher2/FestivalPageManager;->dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->access$000()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "data_charging_checkbox"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FestivalPageManager$10;->this$0:Lcom/android/launcher2/FestivalPageManager;

    iget v3, p0, Lcom/android/launcher2/FestivalPageManager$10;->val$festivalKey:I

    # invokes: Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V
    invoke-static {v2, v3}, Lcom/android/launcher2/FestivalPageManager;->access$400(Lcom/android/launcher2/FestivalPageManager;I)V

    return-void
.end method

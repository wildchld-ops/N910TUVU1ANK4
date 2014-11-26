.class Lcom/android/phone/callsettings/AccessorySettings$1;
.super Ljava/lang/Object;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AccessorySettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AccessorySettings;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AccessorySettings;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AccessorySettings$1;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    iput-object p2, p0, Lcom/android/phone/callsettings/AccessorySettings$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings$1;->this$0:Lcom/android/phone/callsettings/AccessorySettings;

    iget-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings$1;->val$prefs:Landroid/content/SharedPreferences;

    # invokes: Lcom/android/phone/callsettings/AccessorySettings;->updateAutoAnswerMemo(Landroid/content/SharedPreferences;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->access$000(Lcom/android/phone/callsettings/AccessorySettings;Landroid/content/SharedPreferences;)V

    return-void
.end method

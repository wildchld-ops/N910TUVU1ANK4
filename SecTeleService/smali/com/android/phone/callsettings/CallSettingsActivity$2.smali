.class Lcom/android/phone/callsettings/CallSettingsActivity$2;
.super Ljava/lang/Object;
.source "CallSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallSettingsActivity;->switchToParent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsActivity$2;->this$0:Lcom/android/phone/callsettings/CallSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsActivity$2;->this$0:Lcom/android/phone/callsettings/CallSettingsActivity;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsActivity$2;->this$0:Lcom/android/phone/callsettings/CallSettingsActivity;

    # getter for: Lcom/android/phone/callsettings/CallSettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->access$000(Lcom/android/phone/callsettings/CallSettingsActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/CallSettingsActivity;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallSettingsActivity;->access$100(Lcom/android/phone/callsettings/CallSettingsActivity;Ljava/lang/String;)V

    return-void
.end method

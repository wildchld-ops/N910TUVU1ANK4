.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->writeFontSizePreference(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->readFontSizePreference(Landroid/preference/ListPreference;)V

    return-void
.end method

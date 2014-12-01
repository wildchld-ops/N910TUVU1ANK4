.class Lcom/android/settings/DockSettings$9;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DockSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DockSettings$9;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DockSettings$9;->this$0:Lcom/android/settings/DockSettings;

    # invokes: Lcom/android/settings/DockSettings;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$700(Lcom/android/settings/DockSettings;)V

    return-void
.end method

.class Lcom/android/settings/accessibility/AccessibilitySettings$9;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

.field final synthetic val$checkShortcut:[Z


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$9;->val$checkShortcut:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$9;->val$checkShortcut:[Z

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

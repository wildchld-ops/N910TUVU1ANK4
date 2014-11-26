.class Landroid/webkitsec/AccessibilityInjectorFallback$1;
.super Ljava/lang/Object;
.source "AccessibilityInjectorFallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/AccessibilityInjectorFallback;->onSelectionStringChangedWebCoreThread(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/AccessibilityInjectorFallback;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/webkitsec/AccessibilityInjectorFallback;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/AccessibilityInjectorFallback$1;->this$0:Landroid/webkitsec/AccessibilityInjectorFallback;

    iput-object p2, p0, Landroid/webkitsec/AccessibilityInjectorFallback$1;->val$selection:Ljava/lang/String;

    iput p3, p0, Landroid/webkitsec/AccessibilityInjectorFallback$1;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/AccessibilityInjectorFallback$1;->this$0:Landroid/webkitsec/AccessibilityInjectorFallback;

    iget-object v1, p0, Landroid/webkitsec/AccessibilityInjectorFallback$1;->val$selection:Ljava/lang/String;

    iget v2, p0, Landroid/webkitsec/AccessibilityInjectorFallback$1;->val$token:I

    # invokes: Landroid/webkitsec/AccessibilityInjectorFallback;->onSelectionStringChangedMainThread(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Landroid/webkitsec/AccessibilityInjectorFallback;->access$000(Landroid/webkitsec/AccessibilityInjectorFallback;Ljava/lang/String;I)V

    return-void
.end method

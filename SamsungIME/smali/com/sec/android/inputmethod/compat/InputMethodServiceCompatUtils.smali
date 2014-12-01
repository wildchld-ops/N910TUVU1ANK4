.class public final Lcom/sec/android/inputmethod/compat/InputMethodServiceCompatUtils;
.super Ljava/lang/Object;
.source "InputMethodServiceCompatUtils.java"


# static fields
.field private static final METHOD_enableHardwareAcceleration:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/inputmethodservice/InputMethodService;

    const-string v1, "enableHardwareAcceleration"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/sec/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/compat/InputMethodServiceCompatUtils;->METHOD_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/sec/android/inputmethod/compat/InputMethodServiceCompatUtils;->METHOD_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.class public Lcom/sec/android/inputmethod/compat/InputMethodManagerCompat;
.super Ljava/lang/Object;
.source "InputMethodManagerCompat.java"


# static fields
.field private static final METHOD_NAME_GET_WACOM_PAN:Ljava/lang/String; = "getWACOMPen"

.field private static final METHOD_getWACOMPen:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "getWACOMPen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/sec/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/compat/InputMethodManagerCompat;->METHOD_getWACOMPen:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWACOMPenState(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 4

    const/4 v0, 0x0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "getWACOMPen"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/sec/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/compat/InputMethodManagerCompat;->METHOD_getWACOMPen:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v0}, Lcom/sec/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    return v0
.end method

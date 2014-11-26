.class public Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;
.super Ljava/lang/Object;
.source "AndroidContext.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "GBAAndroidContext"

.field private static contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static contextInstance:Ljava/lang/Object;

.field private static instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

.field private static intentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static serviceConnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GBAAndroidContext"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    sput-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidClasses()V
    .locals 4

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "GBAAndroidContext"

    const-string v3, "Dynamically Load Android Classes"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    const-string v1, "android.content.Intent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->intentClass:Ljava/lang/Class;

    const-string v1, "android.content.ServiceConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->serviceConnClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;
    .locals 2

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;-><init>()V

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContextProvider;->getContext()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getAndroidClasses()V

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->instance:Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;

    return-object v1
.end method

.method private getIntentInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "android.content.Intent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    :goto_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "GBAAndroidContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentInstance is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private varargs getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "GBAAndroidContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bindService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getIntentInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "bindService"

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->intentClass:Ljava/lang/Class;

    aput-object v8, v7, v10

    sget-object v8, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->serviceConnClass:Ljava/lang/Class;

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v11

    invoke-direct {p0, v5, v6, v7}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    if-eqz v5, :cond_0

    :try_start_0
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v6, "GBAAndroidContext"

    const-string v7, "Android Context Instance is Null"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v6, "GBAAndroidContext"

    const-string v7, "BindServiceMethod is Null"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startService(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getIntentInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "startService"

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->intentClass:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "Android Context Instance is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "unbindServiceMethod is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindService(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v3, "unbindService"

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextClass:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->serviceConnClass:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->getMethod(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->contextInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "Android Context Instance is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/remote/AndroidContext;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "GBAAndroidContext"

    const-string v5, "unbindServiceMethod is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/android/mms/reflector/BaseReflector;
.super Ljava/lang/Object;
.source "BaseReflector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/BaseReflect"


# instance fields
.field protected mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mClassName:Ljava/lang/String;

.field protected mConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected mFieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoaded:Z

.field protected mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/reflector/BaseReflector;->mLoaded:Z

    const-string v0, "BaseReflect"

    iput-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->isSupportClass()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/mms/util/MethodReflector;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->isSupportClass()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    const/4 v5, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v7, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/mms/util/MethodReflector;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iget-object v7, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->isSupportClass()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mFieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mFieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/android/mms/util/MethodReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mFieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->isSupportClass()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, p1, v1}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->isSupportClass()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    const/4 v5, 0x0

    if-nez p2, :cond_1

    move-object v5, p1

    :goto_1
    iget-object v7, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    goto :goto_0
.end method

.method protected getOwnClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/mms/reflector/BaseReflector;->mLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/reflector/BaseReflector;->mLoaded:Z

    iget-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClassName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/mms/reflector/BaseReflector;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/util/MethodReflector;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/reflector/BaseReflector;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public invoke(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public isSupportClass()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/reflector/BaseReflector;->mLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/reflector/BaseReflector;->getOwnClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mConstructorMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mMethodMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mFieldMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public interface abstract annotation Lcom/sec/chaton/clientapi/API;
.super Ljava/lang/Object;
.source "API.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sec/chaton/clientapi/API;
        description = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract description()Ljava/lang/String;
.end method

.method public abstract versionCode()I
.end method

.class public interface abstract Lcom/touchtype_fluency/util/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# virtual methods
.method public abstract getDirectory()Ljava/io/File;
.end method

.method public abstract getPreinstallDirectory()Ljava/io/File;
.end method

.method public abstract getTempDirectory()Ljava/io/File;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract loadConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

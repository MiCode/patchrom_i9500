.class public interface abstract Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;
.super Ljava/lang/Object;
.source "SimeHotwordEditInterface.java"


# static fields
.field public static final FAILED:I = 0x3

.field public static final INVALUD_INPUT:I = 0x2

.field public static final MEMORY_FULL:I = 0x1

.field public static final SUCCESS:I


# virtual methods
.method public abstract addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteHotwordFromEngin(Ljava/lang/String;)I
.end method

.method public abstract exit()V
.end method

.method public abstract exportHotwords(Ljava/lang/String;)I
.end method

.method public abstract importHotwords(Ljava/lang/String;)I
.end method

.method public abstract init()I
.end method

.method public abstract resetHotwordsInEngin()I
.end method

.method public abstract setLanguage(Ljava/lang/String;)I
.end method

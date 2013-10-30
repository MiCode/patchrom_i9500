.class public interface abstract Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouListInterface;
.super Ljava/lang/Object;
.source "SimeSogouListInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimeParseSogouData"

.field public static final dateTagName:Ljava/lang/String; = "datetime"

.field public static final pinyinTagName:Ljava/lang/String; = "pinyin"

.field public static final wordCount:Ljava/lang/String; = "wordCount"

.field public static final wordTagName:Ljava/lang/String; = "word"


# virtual methods
.method public abstract getParseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeStamp()Ljava/lang/String;
.end method

.method public abstract parseXML(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation
.end method

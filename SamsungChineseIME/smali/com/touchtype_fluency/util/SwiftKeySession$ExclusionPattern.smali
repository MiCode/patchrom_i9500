.class public Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;
.super Ljava/lang/Object;
.source "SwiftKeySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExclusionPattern"
.end annotation


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "pattern"
    .parameter "regexFlags"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;->mPattern:Ljava/util/regex/Pattern;

    .line 212
    return-void
.end method


# virtual methods
.method public segment(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public test(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

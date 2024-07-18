<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>
          MudFeed |
          <xsl:value-of select="/atom:feed/atom:title"/>
        </title>
        <meta charset="utf-8"/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="icon" href="feed.png" />
        <style type="text/css">
          .text-2 { font-size: 8pt; }
          .text-1 { padding-bottom: 0px; }
          .pb-7 { padding-bottom: 20px; }
          .text-8 { padding-top:0px; padding-bottom: 20px; }
        </style>
      </head>
      <body>
        <main class="layout-content">
          <dk-alert-box type="info">
            <small>This is an Atom feed. Subscribe by copying the URL into your newsreader. Visit <a href="https://aboutfeeds.com">About Feeds</a> to learn more and get started. It’s free.</small>
          </dk-alert-box>
          <div class="py-7">
            <h1 class="flex items-start">
              <!-- https://commons.wikimedia.org/wiki/File:Feed-icon.svg -->
              <a>
                <xsl:attribute name="href">
                  <xsl:value-of select="/atom:feed/atom:link[2]/@href"/>
                </xsl:attribute>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1"
                   class="mr-5"
                   style="flex-shrink: 0; width: 1em; height: 1em;"
                   viewBox="0 0 256 256">
                <defs>
                  <linearGradient x1="0.085" y1="0.085" x2="0.915" y2="0.915"
                                  id="RSSg">
                    <stop offset="0.0" stop-color="#E3702D"/>
                    <stop offset="0.1071" stop-color="#EA7D31"/>
                    <stop offset="0.3503" stop-color="#F69537"/>
                    <stop offset="0.5" stop-color="#FB9E3A"/>
                    <stop offset="0.7016" stop-color="#EA7C31"/>
                    <stop offset="0.8866" stop-color="#DE642B"/>
                    <stop offset="1.0" stop-color="#D95B29"/>
                  </linearGradient>
                </defs>
                <rect width="256" height="256" rx="55" ry="55" x="0" y="0"
                      fill="#CC5D15"/>
                <rect width="246" height="246" rx="50" ry="50" x="5" y="5"
                      fill="#F49C52"/>
                <rect width="236" height="236" rx="47" ry="47" x="10" y="10"
                      fill="url(#RSSg)"/>
                <circle cx="68" cy="189" r="24" fill="#FFF"/>
                <path
                  d="M160 213h-34a82 82 0 0 0 -82 -82v-34a116 116 0 0 1 116 116z"
                  fill="#FFF"/>
                <path
                  d="M184 213A140 140 0 0 0 44 73 V 38a175 175 0 0 1 175 175z"
                  fill="#FFF"/>
              </svg>
              </a>
              MudFeed's Weblog
            </h1>
            <!-- h2><a href="http://mudfeed.mooo.com">http://mudfeed.mooo.com</a></h2 -->   
             <a>
              <xsl:attribute name="href">
                <xsl:value-of select="/atom:feed/atom:link[2]/@href"/>
              </xsl:attribute>
              <xsl:value-of select="/atom:feed/atom:link[2]/@href"/>
            </a> 
           
            <!-- p>
              <xsl:value-of select="/atom:feed/atom:subtitle"/>
            </p -->
                   
            <h2>Recent feed posts</h2>
            <div class="text-8">
              <xsl:text>&lt;</xsl:text><a href="mailto:jannis.bloem@gmail.com"><xsl:value-of select="/atom:feed/atom:author/atom:email" /></a><xsl:text>&#160;</xsl:text><a href=""><xsl:attribute name="href"><xsl:value-of select="/atom:feed/atom:link[3]/@href"/></xsl:attribute>0x3F31D84F-pub.asc</a>, (<a href="https://www.linkedin.com/in/jannis-bloemendal/"><xsl:value-of select="/atom:feed/atom:author/atom:uri"/></a> )<xsl:text>&gt;</xsl:text>
            </div>
            <xsl:for-each select="/atom:feed/atom:entry">
              <div class="post pb-7">
                <xsl:attribute name="id">
                  <xsl:value-of select="atom:published"/>
                </xsl:attribute>

                <div class="text-2 text-offset">
                  Published on <xsl:value-of select="atom:published" />
                </div>
                <div class="text-1 font-bold">
                 <!--
                  <a>
                    <xsl:attribute name="href">
                      <xsl:value-of select="atom:link/@href"/>
                    </xsl:attribute>
                    <xsl:value-of select="atom:title"/>
                  </a>
                  -->
                  <xsl:value-of select="atom:title"/>
                </div>
                
                <!-- div class="text-4"><xsl:value-of select="atom:summary"/></div -->
              </div>
            </xsl:for-each>
          </div>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

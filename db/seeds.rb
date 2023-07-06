# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Document.create(
  [
    {
      title: 'Docs',
      description: 'Find in-depth information about Next.js features and API.',
      link: 'https://nextjs.org/docs?utm_source=create-next-app&utm_medium=default-template-tw&utm_campaign=create-next-app'
    },
    {
      title: 'Learn',
      description: 'Learn about Next.js in an interactive course with&nbsp;quizzes!',
      link: 'https://nextjs.org/learn?utm_source=create-next-app&utm_medium=default-template-tw&utm_campaign=create-next-app'
    },
    {
      title: 'Templates',
      description: 'Discover and deploy boilerplate example Next.js&nbsp;projects.',
      link: 'https://vercel.com/templates?framework=next.js&utm_source=create-next-app&utm_medium=default-template-tw&utm_campaign=create-next-app'
    },
    {
      title: 'Deploy',
      description: 'Instantly deploy your Next.js site to a shareable URL with Vercel.',
      link: 'https://vercel.com/new?utm_source=create-next-app&utm_medium=default-template-tw&utm_campaign=create-next-app'
    }
  ]
)
